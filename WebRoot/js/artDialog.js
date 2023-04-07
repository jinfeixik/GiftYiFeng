
/*
 * artDialog 4.0.5
 * Date: 2011-07-30 14:29
 * http://code.google.com/p/artdialog/
 * (c) 2009-2010 TangBin, http://www.planeArt.cn
 *
 * This is licensed under the GNU LGPL, version 2.1 or later.
 * For details, see: http://creativecommons.org/licenses/LGPL/2.1/
 */
 
 
/*!
	"art"底层操作微型库，模拟 jQuery DOM 操作接口。
------------------------------------------------------------------*/
;(function (window, undefined) {
if (window.jQuery) return jQuery;

var $ = window.art = function (selector, content) {
    	return new $.fn.init(selector, content);
	},
    readyBound = false,
    readyList = [],
    DOMContentLoaded, timerId, 
	isOpacity = 'opacity' in document.documentElement.style,
	quickExpr = /^(?:[^<]*(<[\w\W]+>)[^>]*$|#([\w\-]+)$)/,
	rclass = /[\n\t]/g,
	ralpha = /alpha\([^)]*\)/i,
	ropacity = /opacity=([^)]*)/,
    rfxnum = /^([+-]=)?([\d+-.]+)(.*)$/;

if (window.$ === undefined) window.$ = $;
$.fn = $.prototype = {
	constructor: $,
	
    /**
	 * DOM 就绪
	 * @param	{Function}	回调函数
	 */
    ready: function (callback) {
        $.bindReady();

        if ($.isReady) {
            callback.call(document, $);
        } else if (readyList) {
            readyList.push(callback);
        };

        return this;
    },

    /**
	 * 判断样式类是否存在
	 * @param	{String}	名称
	 * @return	{Boolean}
	 */
    hasClass: function (name) {		
		var className = ' ' + name + ' ';
		if ((' ' + this[0].className + ' ').replace(rclass, ' ')
		.indexOf(className) > -1) return true;

		return false;
    },

    /**
	 * 添加样式类
	 * @param	{String}	名称
	 */
    addClass: function (name) {
        if (!this.hasClass(name)) this[0].className += ' ' + name;

        return this;
    },

    /**
	 * 移除样式类
	 * @param	{String}	名称
	 */
    removeClass: function (name) {
        var elem = this[0];

        if (!name) {
            elem.className = '';
        } else
		if (this.hasClass(name)) {
            elem.className = elem.className.replace(name, ' ');
        };

        return this;
    },

    /**
	 * 读写样式<br />
     * css(name) 访问第一个匹配元素的样式属性<br />
     * css(properties) 把一个"名/值对"对象设置为所有匹配元素的样式属性<br />
     * css(name, value) 在所有匹配的元素中，设置一个样式属性的值<br />
	 */
    css: function (name, value) {
        var i, elem = this[0], obj = arguments[0];

        if (typeof name === 'string') {
            if (value === undefined) {
                return $.css(elem, name);
            } else {
                name === 'opacity' ?
					$.opacity.set(elem, value) :
					elem.style[name] = value;
            };
        } else {
            for (i in obj) {
				i === 'opacity' ?
					$.opacity.set(elem, obj[i]) :
					elem.style[i] = obj[i];
			};
        };

        return this;
    },
	
	/** 显示元素 */
	show: function () {
		return this.css('display', 'block');
	},
	
	/** 隐藏元素 */
	hide: function () {
		return this.css('display', 'none');
	},

    /**
	 * 获取相对文档的坐标
	 * @return	{Object}	返回left、top的数值
	 */
    offset: function () {
        var elem = this[0],
            box = elem.getBoundingClientRect(),
            doc = elem.ownerDocument,
            body = doc.body,
            docElem = doc.documentElement,
            clientTop = docElem.clientTop || body.clientTop || 0,
            clientLeft = docElem.clientLeft || body.clientLeft || 0,
            top = box.top + (self.pageYOffset || docElem.scrollTop) - clientTop,
            left = box.left + (self.pageXOffset || docElem.scrollLeft) - clientLeft;

        return {
            left: left,
            top: top
        };
    },
	
	/**
	 * 读写HTML - (不支持文本框)
	 * @param	{String}	内容
	 */
	html: function (content) {
		if (content === undefined) return this[0].innerHTML;
		this[0].innerHTML = content;
		
		return this;
	}
};

$.fn.init = function (selector, content) {
	var match, elem;
	content = content || document;
	
	if (!selector) return this;
	
	if (selector.nodeType) {
		this[0] = selector;
		return this;
	};
	
	if (selector === 'body' && content.body) {
		this[0] = content.body;
		return this;
	};
	
	if (selector === 'head' || selector === 'html') {
		this[0] = content.getElementsByTagName(selector)[0];
		return this;
	};
		
	if (typeof selector === 'string') {
		match = quickExpr.exec(selector);

		if (match && match[2]) {
			elem = content.getElementById(match[2]);
			if (elem && elem.parentNode) this[0] = elem;
			return this;
		};
	};
	
	if (typeof selector === 'function') return $(document).ready(selector);
	
	this[0] = selector;
	
	return this;
};
$.fn.init.prototype = $.fn;

/** 空函数 */
$.noop = function () {};

/** 检测window */
$.isWindow = function (obj) {
	return obj && typeof obj === 'object' && 'setInterval' in obj;
};

/** 数组判定 */
$.isArray = function (obj) {
    return Object.prototype.toString.call(obj) === '[object Array]';
};

/**
 * 搜索子元素
 * 注意：只支持nodeName或.className的形式，并且只返回第一个元素
 * @param	{String}
 */
$.fn.find = function (expr) {
	var value, elem = this[0],
		className = expr.split('.')[1];

	if (className) {
		if (document.getElementsByClassName) {
			value = elem.getElementsByClassName(className);
		} else {
			value = getElementsByClassName(className, elem);
		};
	} else {
		value = elem.getElementsByTagName(expr);
	};
	
	return $(value[0]);
};
function getElementsByClassName (className, node, tag) {
	node = node || document;
	tag = tag || '*';
	var i = 0,
		j = 0,
		classElements = [],
		els = node.getElementsByTagName(tag),
		elsLen = els.length,
		pattern = new RegExp("(^|\\s)" + className + "(\\s|$)");
		
	for (; i < elsLen; i ++) {
		if (pattern.test(els[i].className)) {
			classElements[j] = els[i];
			j ++;
		};
	};
	return classElements;
};

/**
 * 遍历
 * @param {Object}
 * @param {Function}
 */
$.each = function (obj, callback) {
    var name, i = 0,
        length = obj.length,
        isObj = length === undefined;

    if (isObj) {
        for (name in obj) {
            if (callback.call(obj[name], name, obj[name]) === false) break;
        };
    } else {
        for (var value = obj[0];
		i < length && callback.call(value, i, value) !== false;
		value = obj[++i]) {};
    };
	
	return obj;
};

/**
 * 移除节点
 */
$.fn.remove = function () {
	var elem = this[0];

	while (elem.firstChild) {
		$.event.remove(elem.firstChild);
		$.removeData(elem.firstChild);
		elem.removeChild(elem.firstChild);
	};

	$.event.remove(elem);
	$.removeData(elem);
	elem.parentNode.removeChild(elem);
	'CollectGarbage' in window && setTimeout(CollectGarbage, 1);
	return this;
};

/**
 * 写入数据缓存
 * @param	{String}	名称
 * @param	{Object}	数据
 */
$.fn.data = function (name, data) {
	var ret = $.data(this[0], name, data);
	if (data !== undefined) return ret; 
	return this;
};

/**
 * 删除数据缓存
 * @param	{String}	名称
 * @param	{Object}	数据
 */
$.fn.removeData = function (name) {
	$.removeData(this[0], name);
	return this;
};

$.uuid = 0;
$.cache = {};
$.expando = '@cache' + (new Date).getTime();

$.data = function (elem, name, data) {
	var cache = $.cache,
		id = $._getUid(elem);
	
	if (!cache[id]) cache[id] = {};
	if (data !== undefined) cache[id][name] = data;
	
	return cache[id][name];
};

$._getUid = function (elem) {
	var expando = $.expando,
		id = elem === window ? 0 : elem[expando];
	if (id === undefined) elem[expando] = id = ++ $.uuid;
	return id;
};

$.removeData = function (elem, name) {
	var expando = $.expando,
		cache = $.cache,
		id = $._getUid(elem),
		thisCache = id && cache[id];

	if (!thisCache) return;
	if (name) return delete thisCache[name];
	
	delete cache[id];
	if (elem.removeAttribute) {
		elem.removeAttribute(expando);
	} else {
		elem[expando] = null;
	};
};

/**
 * 事件绑定
 * @param	{String}	类型
 * @param	{Function}	要绑定的函数
 */
$.fn.bind = function (type, callback) {
	$.event.add(this[0], type, callback);
	return this;
};

/**
 * 移除事件
 * @param	{String}	类型
 * @param	{Function}	要卸载的函数
 */
$.fn.unbind = function(type, callback) {
	$.event.remove(this[0], type, callback);
	return this;
};

// 事件机制
$.event = {
	
	// 添加
	add: function (elem, type, callback) {
		var types, listeners,
			data = $.data(elem, '@events') || $.data(elem, '@events', {}),
			ecma = 'addEventListener' in elem,
			add = ecma ? 'addEventListener' : 'attachEvent';
		
		types = data[type] = data[type] || {};
		listeners = types.listeners = types.listeners || [];
		listeners.push(callback);
		
		if (!types.handler) {
			types.elem = elem;
			types.handler = this.handler($._getUid(elem));
			
			type = ecma ? type : 'on' + type;
			elem[add](type, types.handler, false);
		};
	},
	
	// 卸载
	remove: function (elem, type, callback) {
		var i, types, listeners,
			data = $.data(elem, '@events'),
			ecma = 'removeEventListener' in elem,
			remove = ecma ? 'removeEventListener' : 'detachEvent';
		
		if (!data) return;
		if (type === undefined) {
			for (i in data) this.remove(elem, i);
			//return;
		};
		
		types = data[type];
		if (!types) return;
		
		listeners = types.listeners;
		if(!listeners) return;
		if (callback === undefined) {
			types.listeners = [];
		} else {
			for (i = 0; i < listeners.length; i ++) {
				listeners[i] === callback && listeners.splice(i--, 1);
			};
		};
		
		if (listeners.length === 0) {
			delete data[type];
			type = ecma ? type : 'on' + type;
			elem[remove](type, types.handler, false);
		};
	},
	
	handler: function (id) {
		return function (event) {
			event = $.event.fix(event || window.event);
			var cache = $.cache[id]['@events'][event.type];
			for (var i = 0, fn; fn = cache.listeners[i++];) {
				if (fn.call(cache.elem, event) === false) {
					event.preventDefault();
					event.stopPropagation();
				};
			};
		};
	},
	
	// 兼容处理
	fix: function (e) {
		if (e.target) return e;
		var event = {
			target: e.srcElement || document,
			preventDefault: function () {e.returnValue = false},
			stopPropagation: function () {e.cancelBubble = true}
		};
		for (var i in e) event[i] = e[i];
		
		return event;
	}
};

// DOM就绪事件
$.isReady = false;
$.ready = function () {
    if (!$.isReady) {
        if (!document.body) return setTimeout($.ready, 13);
        $.isReady = true;

        if (readyList) {
            var fn, i = 0;
            while ((fn = readyList[i++])) {
                fn.call(document, $);
            };
            readyList = null;
        };
    };
};
$.bindReady = function () {
    if (readyBound) return;

    readyBound = true;

    if (document.readyState === 'complete') {
        return $.ready();
    };

    if (document.addEventListener) {
        document.addEventListener('DOMContentLoaded', DOMContentLoaded, false);
        window.addEventListener('load', $.ready, false);
    } else if (document.attachEvent) {
        document.attachEvent('onreadystatechange', DOMContentLoaded);
        window.attachEvent('onload', $.ready);
        var toplevel = false;
        try {
            toplevel = window.frameElement == null;
        } catch (e) {};

        if (document.documentElement.doScroll && toplevel) {
            doScrollCheck();
        };
    };
};

if (document.addEventListener) {
    DOMContentLoaded = function () {
        document.removeEventListener('DOMContentLoaded', DOMContentLoaded, false);
        $.ready();
    };
} else if (document.attachEvent) {
    DOMContentLoaded = function () {
        if (document.readyState === 'complete') {
            document.detachEvent('onreadystatechange', DOMContentLoaded);
            $.ready();
        };
    };
};

function doScrollCheck () {
    if ($.isReady) return;

    try {
        document.documentElement.doScroll('left');
    } catch (e) {
        setTimeout(doScrollCheck, 1);
        return;
    };
    $.ready();
};

// 获取css
$.css = 'defaultView' in document && 'getComputedStyle' in document.defaultView ?
	function (elem, name) {
		return document.defaultView.getComputedStyle(elem, false)[name]
} :
	function (elem, name) {
		var ret = name === 'opacity' ? $.opacity.get(elem) :
			elem.currentStyle && elem.currentStyle[name];
		return ret || '';
};

// 跨浏览器处理opacity
$.opacity = {
	get: function (elem) {
		return isOpacity ?
			document.defaultView.getComputedStyle(elem, false).opacity :
			ropacity.test((elem.currentStyle
				? elem.currentStyle.filter
				: elem.style.filter) || '')
				? (parseFloat(RegExp.$1) / 100) + ''
				: 1;
	},
	set: function (elem, value) {
		if (isOpacity) return elem.style.opacity = value;
		var style = elem.style;
		style.zoom = 1;

		var opacity = 'alpha(opacity=' + value * 100 + ')',
			filter = style.filter || '';

		style.filter = ralpha.test(filter) ?
			filter.replace(ralpha, opacity) :
			style.filter + ' ' + opacity;
	}
};

/**
 * 获取滚动条位置 - [不支持写入]
 * $.fn.scrollLeft, $.fn.scrollTop
 * @example		获取文档垂直滚动条：$(document).scrollTop()
 * @return		{Number}	返回滚动条位置
 */
$.each(['Left', 'Top'], function (i, name) {
    var method = 'scroll' + name;

    $.fn[method] = function (val) {
        var elem = this[0], win;

		win = getWindow(elem);
		return win ?
			('pageXOffset' in win) ?
				win[i ? 'pageYOffset' : 'pageXOffset'] :
				win.document.documentElement[method] || win.document.body[method] :
			elem[method];
    };
});

function getWindow (elem) {
	return $.isWindow(elem) ?
		elem :
		elem.nodeType === 9 ?
			elem.defaultView || elem.parentWindow :
			false;
};

/**
 * 获取窗口或文档尺寸 - [只支持window与document读取]
 * @example 
   获取文档宽度：$(document).width()
   获取可视范围：$(window).width()
 * @return	{Number}
 */
$.each(['Height', 'Width'], function (i, name) {
    var type = name.toLowerCase();

    $.fn[type] = function (size) {
        var elem = this[0];
        if (!elem) {
            return size == null ? null : this;
        };

		return $.isWindow(elem) ?
			elem.document.documentElement['client' + name] || elem.document.body['client' + name] :
			(elem.nodeType === 9) ?
				Math.max(
					elem.documentElement['client' + name],
					elem.body['scroll' + name], elem.documentElement['scroll' + name],
					elem.body['offset' + name], elem.documentElement['offset' + name]
				) : null;
    };

});

/**
 * 简单ajax支持
 * @example
 * $.ajax({
 * 		url: url,
 * 		success: callback,
 * 		cache: cache
 * });
 */
$.ajax = function (config) {
	var ajax = window.XMLHttpRequest ?
			new XMLHttpRequest() :
			new ActiveXObject('Microsoft.XMLHTTP'),
		url = config.url;
	
	if (config.cache === false) {
		var ts = (new Date()).getTime(),
			ret = url.replace(/([?&])_=[^&]*/, "$1_=" + ts );
		url = ret + ((ret === url) ? (/\?/.test(url) ? "&" : "?") + "_=" + ts : "");
	};
	
	ajax.onreadystatechange = function() {
		if (ajax.readyState === 4 && ajax.status === 200) {
			config.success && config.success(ajax.responseText);
			ajax.onreadystatechange = $.noop;
		};
	};
	ajax.open('GET', url, 1);
	ajax.send(null);
};

/** 动画引擎 - [不支持链式列队操作] */
$.fn.animate = function (prop, speed, easing, callback) {
	
	speed = speed || 400;
	if (typeof easing === 'function') callback = easing;
	easing = easing && $.easing[easing] ? easing : 'swing';
	
    var $this = this, overflow,
        fx, parts, start, end, unit,
		opt = {
			speed: speed,
			easing: easing,
			callback: function () {
				if (overflow != null) $this[0].style.overflow = '';
				callback && callback();
			}
		};
	
	opt.curAnim = {};
	$.each(prop, function (name, val) {
		opt.curAnim[name] = val;
	});
	
    $.each(prop, function (name, val) {
        fx = new $.fx($this[0], opt, name);
        parts = rfxnum.exec(val);
        start = parseFloat(name === 'opacity'
			|| ($this[0].style && $this[0].style[name] != null) ?
			$.css($this[0], name) :
			$this[0][name]);
        end = parseFloat(parts[2]);
        unit = parts[3];
		if (name === 'height' || name === 'width') {
			end = Math.max(0, end);
			overflow = [$this[0].style.overflow,
			$this[0].style.overflowX, $this[0].style.overflowY];
		};
		
        fx.custom(start, end, unit);
    });
	
	if (overflow != null) $this[0].style.overflow = 'hidden';

    return this;
};

$.timers = [];
$.fx = function (elem, options, prop) {
    this.elem = elem;
    this.options = options;
    this.prop = prop;
};

$.fx.prototype = {
    custom: function (from, to, unit) {
		var that = this;
        that.startTime = $.fx.now();
        that.start = from;
        that.end = to;
        that.unit = unit;
        that.now = that.start;
        that.state = that.pos = 0;

        function t() {
            return that.step();
        };
        t.elem = that.elem;
		t();
        $.timers.push(t);
        if (!timerId) timerId = setInterval($.fx.tick, 13);
    },
    step: function () {
        var that = this, t = $.fx.now(), done = true;
		
        if (t >= that.options.speed + that.startTime) {
            that.now = that.end;
            that.state = that.pos = 1;
            that.update();
			
			that.options.curAnim[that.prop] = true;
			for (var i in that.options.curAnim) {
				if (that.options.curAnim[i] !== true) {
					done = false;
				};
			};
			
			if (done) that.options.callback.call(that.elem);
			
            return false;
        } else {
            var n = t - that.startTime;
            that.state = n / that.options.speed;
            that.pos = $.easing[that.options.easing](that.state, n, 0, 1, that.options.speed);
            that.now = that.start + ((that.end - that.start) * that.pos);
            that.update();
            return true;
        };
    },
    update: function () {
		var that = this;
		if (that.prop === 'opacity') {
			$.opacity.set(that.elem, that.now);
		} else
		if (that.elem.style && that.elem.style[that.prop] != null) {
			that.elem.style[that.prop] = that.now + that.unit;
		} else {
			that.elem[that.prop] = that.now;
		};
    }
};

$.fx.now = function () {
    return new Date().getTime();
};

$.easing = {
    linear: function (p, n, firstNum, diff) {
        return firstNum + diff * p;
    },
    swing: function (p, n, firstNum, diff) {
        return ((-Math.cos(p * Math.PI) / 2) + 0.5) * diff + firstNum;
    }
};

$.fx.tick = function () {
	var timers = $.timers;
    for (var i = 0; i < timers.length; i++) {
        !timers[i]() && timers.splice(i--, 1);
    };
    !timers.length && $.fx.stop();
};

$.fx.stop = function () {
    clearInterval(timerId);
    timerId = null;
};

$.fn.stop = function () {
	var timers = $.timers;
    for (var i = timers.length - 1; i >= 0; i--) {
    	if (timers[i].elem === this[0]) timers.splice(i, 1);
	};
    return this;
};

//-------------end
return $}(window));







/*!
	对话框主程序			
------------------------------------------------------------------*/
;(function ($, window, undefined) {

$.log = function (content) {window.console && console.log(content)};
$(function () {
	!window.jQuery && document.compatMode === 'BackCompat'
	&& alert('artDialog Error: document.compatMode === "BackCompat"');
});

var _box, _thisScript, _skin, _path, _tmplEngine,
	_count = 0,
	_$window = $(window),
	_$document = $(document),
	_$html = $('html'),
	_$body = $(function(){_$body = $('body')}),
	_elem = document.documentElement,
	_isIE6 = !-[1,] && !('minWidth' in _elem.style),
	_isMobile = 'ontouchend' in _elem && !('onmousemove' in _elem)
		|| /(iPhone|iPad|iPod)/i.test(navigator.userAgent),
	_isFixed = !_isIE6 && !_isMobile,
	_eventDown = _isMobile ? 'touchstart' : 'mousedown',
	_expando = 'artDialog' + (new Date).getTime();

var artDialog = function (config, yesFn, noFn) {
	config = config || {};
	if (typeof config === 'string' || config.nodeType === 1) {
		config = {content: config, fixed: !_isMobile};
	};
	
	var api, buttons = [],
		defaults = artDialog.defaults,
		elem = config.follow = this.nodeType === 1 && this || config.follow;
		
	// 合并默认配置
	for (var i in defaults) {
		if (config[i] === undefined) config[i] = defaults[i];		
	};
	
	// 返回跟随模式或重复定义的ID
	if (typeof elem === 'string') elem = $(elem)[0];
	config.id = elem && elem[_expando + 'follow'] || config.id || _expando + _count;
	api = artDialog.list[config.id];
	if (elem && api) return api.follow(elem).zIndex().focus();
	if (api) return api.zIndex();
	
	// 目前主流移动设备对fixed支持不好
	if (_isMobile) config.fixed = false;
	
	// 按钮队列
	if (!$.isArray(config.button)) {
		config.button = config.button ? [config.button] : [];
	};
	yesFn = yesFn || config.yesFn;
	noFn = noFn || config.noFn;
	yesFn && config.button.push({
		name: config.yesText,
		callback: yesFn,
		focus: true
	});
	noFn && config.button.push({
		name: config.noText,
		callback: noFn
	});
	
	// zIndex全局配置
	artDialog.defaults.zIndex = config.zIndex;
	
	_count ++;
	return artDialog.list[config.id] = _box ?
		_box._init(config, true) : new artDialog.fn._init(config);
};

artDialog.fn = artDialog.prototype = {

	version: '4.0.5',
	
	_init: function (config, isReset) {
		var that = this;
		
		that.config = config;
		that._isClose = false;
		that._listeners = {};
		that._minWidth = config.minWidth;
		that._minHeight = config.minHeight;
		that._fixed = _isIE6 ? false : config.fixed;
		
		if (!isReset) {
			that._wrap = document.createElement('div');
			that.DOM = {
				wrap: $(that._wrap)
			};
			that._outerTmpl();
		};
		
		that._wrap.style.cssText = 'position:absolute;left:0;top:0';
		that._wrap.className = config.skin;
		that._innerTmpl();
		
		if (isReset) {
			_box = null;
		} else {
			that._eventProxy();
		};

		that.size(config.width, config.height);
		config.follow ? that.follow(config.follow) : that.position(config.left, config.top);
		config.focus && that.focus();
		config.lock && that.lock();
		that.zIndex(config.zIndex).time(config.time);
		!config.show && that.hide();
		config.initFn && config.initFn.call(that, window);
		
		return that;
	},
	
	/**
	 * 设置内容
	 * @param	{String, HTMLElement, Object}	内容 (可选)
	 * @param	{String}						模板 (可选, 需要msg参数类型为 Object 才能生效)
	 * @return	{this, HTMLElement}				如果无参数则返回内容容器DOM对象
	 */
	content: function (msg, tmpl) {
		var prev, next, parent, display,
			that = this,
			content = that.DOM.content,
			elem = content[0];
		
		that._elemBack = null;
		
		if (!msg && msg !== 0) {
			return elem;
		} else if (tmpl) {
			content.html(_tmplEngine(tmpl, msg));
		} else if (typeof msg === 'string') {
			content.html(msg);
		} else if (msg.nodeType === 1) {
		
			// 让传入的元素在对话框关闭后可以返回到原来的地方
			display = msg.style.display;
			prev = msg.previousSibling;
			next = msg.nextSibling;
			parent = msg.parentNode;
			that._elemBack = function () {
				if (prev && prev.parentNode) {
					prev.parentNode.insertBefore(msg, prev.nextSibling);
				} else if (next && prev.parentNode) {
					next.parentNode.insertBefore(msg, next);
				} else if (parent) {
					parent.appendChild(msg);
				};
				msg.style.display = display;
			};
			
			content.html('');
			elem.appendChild(msg);
			msg.style.display = 'block';
			
		}else if ($.isArray(msg)) {
			
			// 让传入的元素是对象数组，在对话框关闭后可以返回到原来的地方
			var display = Array();
			var prev = Array();
			var next = Array();
			var parent = Array();
			
			for (i = 0; i < msg.length; i++) {
			     // 每个元素 msg[i]
				display[i] = msg[i].style.display;
				prev[i] = msg[i].previousSibling;
				next[i] = msg[i].nextSibling;
				parent[i] = msg[i].parentNode;
			}

			that._elemBack = function () {
				
				for (i = 0; i < msg.length; i++) {
				     // 每个元素 msg[i]
					if (prev[i] && prev[i].parentNode) {
						prev[i].parentNode.insertBefore(msg[i], prev[i].nextSibling);
					} else if (next[i] && prev[i].parentNode) {
						next[i].parentNode.insertBefore(msg[i], next[i]);
					} else if (parent[i]) {
						parent[i].appendChild(msg[i]);
					};
					msg[i].style.display = display[i];
				}
			};
			
			content.html('');
			for (i = 0; i < msg.length; i++) {
			     // 每个元素 msg[i]								
				elem.appendChild(msg[i]);
				msg[i].style.display = 'block';
			}		
		};
		
		_isIE6 && that._selectFix();
		that._runScript(elem);
		
		return that;
	},
	
	/**
	 * 设置标题
	 * @param	{String}			标题内容
	 * @return	{this, HTMLElement}	如果无参数则返回内容器DOM对象
	 */
	title: function (text) {
		var DOM = this.DOM,
			titleWrap = DOM.titleWrap[0],
			title = DOM.title;
		if (text === undefined) {
			return title[0];
		} else {
			title.html(text);
		};
		titleWrap.style.display = 'block';
		return this;
	},
	
	/**
	 * 位置
	 * @param	{Number, String}
	 * @param	{Number, String}
	 */
	position: function (left, top) {
		var scaleLeft, scaleTop,
			that = this,
			wrap = that.DOM.wrap,
			ie6Fixed = _isIE6 && that.config.fixed,
			docLeft = _$document.scrollLeft(),
			docTop = _$document.scrollTop(),
			dl = that._fixed ? 0 : docLeft,
			dt = that._fixed ? 0 : docTop,
			ww = _$window.width(),
			wh = _$window.height(),
			ow = wrap[0].offsetWidth,
			oh = wrap[0].offsetHeight,
			style = wrap[0].style;
		
		if (!left && left !== 0) left = that._scaleLeft;
		if (!top && top !== 0) top = that._scaleTop;
			
		// 转换left百分比值为数值
		if (typeof left === 'string') {
			scaleLeft = that._toNumber(left, ww - ow);
			if (scaleLeft !== null) {
				that._scaleLeft = left;
				left = scaleLeft + dl;
			};
		} else if (ie6Fixed && typeof left === 'number') {
			left += docLeft;
		};

		// 黄金比例垂直居中
		if (top === 'goldenRatio') {
			that._scaleTop = top;
			top = Math.max(Math.min((oh < 4 * wh / 7 ?
				wh * 0.382 - oh / 2 :
				(wh - oh) / 2) + dt, wh - oh + dt), dt);
		
		// 转换top百分比值为数值
		} else if (typeof top === 'string') {
			scaleTop = that._toNumber(top, wh - oh);
			if (scaleTop !== null) {
				that._scaleTop = top;
				top = scaleTop + dt;
			};
		} else if (ie6Fixed && typeof top === 'number') {
			top += docTop;
		};

		if (typeof left === 'number') style.left = left + 'px';
		if (typeof top === 'number') style.top = top + 'px';
		
		/*that.config.follow = null;*/
		that._autoPositionType();
		
		return that;
	},
	
	/**
	 *	尺寸
	 *	@param	{Number, String}	宽度
	 *	@param	{Number, String}	高度
	 *	@return	this
	 */
	size: function (width, height) {
		var maxWidth, maxHeight, scaleWidth, scaleHeight,
			that = this,
			DOM = that.DOM,
			wrap = DOM.wrap,
			main = DOM.main,
			wrapStyle = wrap[0].style,
			style = main[0].style;
			
		if (!width && width !== 0) width = that._scaleWidth;
		if (!height && height !== 0) height = that._scaleHeight;
				
		// 转换宽度百分比为数值
		if (typeof width === 'string') {
			maxWidth = _$window.width() - wrap[0].offsetWidth + main[0].offsetWidth;
			scaleWidth = that._toNumber(width, maxWidth);
			if (scaleWidth !== null) {
				that._scaleWidth = width;
				width = scaleWidth;
			} else if (width.indexOf('px') !== -1) {
				width = parseInt(width);
			};
		};
		
		// 转换高度百分比为数值
		if (typeof height === 'string') {
			maxHeight = _$window.height() - wrap[0].offsetHeight + main[0].offsetHeight;
			scaleHeight = that._toNumber(height, maxHeight);
			if (scaleHeight !== null) {
				that._scaleHeight = height;
				height = scaleHeight;
			} else if (height.indexOf('px') !== -1) {
				height = parseInt(height);
			};
		};
		
		if (typeof width === 'number') {
			wrapStyle.width = 'auto';
			style.width = Math.max(that._minWidth, width) + 'px';
			wrapStyle.width = wrap[0].offsetWidth + 'px'; // 防止未定义宽度的表格遇到浏览器右边边界伸缩
		} else if (typeof width === 'string') {
			style.width = width;
			width === 'auto' && wrap.css('width', 'auto');
		};
		
		if (typeof height === 'number') {
			style.height = Math.max(that._minHeight, height) + 'px';
		} else if (typeof height === 'string') {
			style.height = height;
		};
		
		_isIE6 && that._selectFix();
		
		return that;
	},
	
	/**
	 * 跟随元素
	 * @param	{HTMLElement}
	 */
	follow: function (elem) {
		var $elem, that = this;

		if (typeof elem === 'string' || elem && elem.nodeType === 1) {
			$elem = $(elem);
		};
		if (!$elem || $elem.css('display') === 'none') {
			return that.position(that.config.left, that.config.top);
		};
		
		var winWidth = _$window.width(),
			winHeight = _$window.height(),
			docLeft =  _$document.scrollLeft(),
			docTop = _$document.scrollTop(),
			offset = $elem.offset(),
			width = $elem[0].offsetWidth,
			height = $elem[0].offsetHeight,
			left = that._fixed ? offset.left - docLeft : offset.left,
			top = that._fixed ? offset.top - docTop : offset.top,
			wrap = that.DOM.wrap[0],
			style = wrap.style,
			wrapWidth = wrap.offsetWidth,
			wrapHeight = wrap.offsetHeight,
			setLeft = left - (wrapWidth - width) / 2,
			setTop = top + height,
			dl = that._fixed ? 0 : docLeft,
			dt = that._fixed ? 0 : docTop;
		
		setLeft = setLeft < dl ? left :
		(setLeft + wrapWidth > winWidth) && (left - wrapWidth > dl)
		? left - wrapWidth + width
		: setLeft;

		setTop = (setTop + wrapHeight > winHeight + dt)
		&& (top - wrapHeight > dt)
		? top - wrapHeight
		: setTop;
		
		style.left = setLeft + 'px';
		style.top = setTop + 'px';
		
		that.config.follow = elem;
		$elem[0][_expando + 'follow'] = that.config.id;
		that._autoPositionType();
		return that;
	},
	
	/**
	 * 自定义按钮
	 * @example
				 button({
					name: 'login',
					callback: function () {},
					disabled: false,
					focus: true
				}, .., ..)
	 */
	button: function () {
		var that = this,
			ags = arguments,
			elem = that.DOM.buttons[0],
			list = $.isArray(ags[0]) ? ags[0] : [].slice.call(ags);
		
		if (!list.length) {
			elem.style.display = 'none';
			return that;
		};
		
		$.each(list, function (i, val) {
			var name = val.name,
				listeners = that._listeners,
				strongButton = 'aui_state_highlight',
				isNewButton = !listeners[name],
				button = !isNewButton ?
					listeners[name].elem :
					document.createElement('button');
					
			if (!listeners[name]) listeners[name] = {};
			if (val.callback) listeners[name].callback = val.callback;
			if (val.className) button.className = val.className;
			if (val.focus) {
				that._focus && that._focus.removeClass(strongButton);
				that._focus = $(button).addClass(strongButton);
				that.focus();
			};
			
			button[_expando + 'callback'] = name;
			button.disabled = !!val.disabled;

			if (isNewButton) {
				button.innerHTML = name;
				listeners[name].elem = button;
				elem.appendChild(button);
			};
		});
		
		elem.style.display = 'block';
		_isIE6 && that._selectFix();
		
		return that;
	},
	
	/** 显示对话框 */
	show: function () {
		this.DOM.wrap.show();
		this._lockMaskWrap && this._lockMaskWrap.show();
		return this;
	},
	
	/** 隐藏对话框 */
	hide: function () {
		this.DOM.wrap.hide();
		this._lockMaskWrap && this._lockMaskWrap.hide();
		return this;
	},
	
	/** 关闭对话框 */
	close: function () {
		var that = this,
			DOM = that.DOM,
			wrap = DOM.wrap,
			list = artDialog.list,
			fn = that.config.closeFn,
			follow = that.config.follow;
		
		if (that._isClose) return that;
		that.time();
		if (typeof fn === 'function' && fn.call(that, window) === false) {
			return that;
		};
		
		that.unlock();
		
		that._elemBack && that._elemBack();
		that._setAbsolute();
		that._timer = that._focus = null;
		that._scaleLeft = that._scaleTop = null;
		that._scaleWidth = that._scaleHeight = null;
		wrap[0].style.cssText = 'display:none';
		wrap[0].className = '';
		DOM.center.html('');
		
		if (artDialog.focus === that) artDialog.focus = null;
		if (follow) follow[_expando + 'follow'] = null;
		delete list[that.config.id];
		that._isClose = true;
		
		if (!_box) {
			_box = that;
		} else {
			that._uneventProxy();
			wrap.remove();
		};
		
		return that;
	},
	
	/**
	 * 定时关闭
	 * @param	{Number}	单位为秒, 无参数则停止计时器
	 */
	time: function (second) {
		var that = this,
			cancel = that.config.noText,
			timer = that._timer;
			
		timer && clearTimeout(timer);
		
		if (second) {
			that._timer = setTimeout(function(){
				that._trigger(cancel);
			}, 1000 * second);
		};
		
		return that;
	},
	
	/** 给按钮附加焦点 */
	focus: function () {
		var elemFocus, content,
			that = this,
			config = that.config,
			DOM = that.DOM;
			
		elemFocus = that._focus && that._focus[0] || DOM.close[0];
		
		try {
			elemFocus && elemFocus.focus();
		} catch (e) {};
		
		return that;
	},
	
	/** 置顶z-index */
	zIndex: function () {
		var that = this,
			wrap = that.DOM.wrap,
			index = artDialog.defaults.zIndex ++,
			focusElem = artDialog.focus;
			
		wrap.css('zIndex', index);
		that._lockMask && that._lockMask.css('zIndex', index - 1);
		
		// 设置最高层的样式
		if (focusElem) focusElem.DOM.wrap.removeClass('aui_state_focus');
		artDialog.focus = that;
		wrap.addClass('aui_state_focus');
		
		return that;
	},
	
	/** 设置屏锁 */
	lock: function () {
		if (this._lock) return this;
		
		var that = this,
			index = artDialog.defaults.zIndex += 2,
			wrap = that.DOM.wrap,
			config = that.config,
			opacity = 'filter:alpha(opacity=' + (config.opacity * 100) + ');opacity:' + config.opacity,
			docWidth = _$window.width(),
			docHeight = _$document.height(),
			lockMaskWrap = that._lockMaskWrap || $(document.body.appendChild(document.createElement('div'))),
			lockMask = that._lockMask || $(lockMaskWrap[0].appendChild(document.createElement('div'))),
			sizeCss = !_isFixed ? 'position:absolute;width:' + docWidth + 'px;height:' + docHeight
				+ 'px' : 'position:fixed;width:100%;height:100%';
		
		wrap.css('zIndex', index);
		
		lockMaskWrap[0].style.cssText = sizeCss + ';z-index:'
		+ (index - 1) + ';top:0;left:0;overflow:hidden;';
		
		lockMask[0].style.cssText = 'height:100%;background:'
		+ config.background + ';' + opacity;
			
		lockMask[0].ondblclick = function () {that.close()};
		
		that._lockMaskWrap = lockMaskWrap;
		that._lockMask = lockMask;
		
		that._lock = true;
		return that;
	},
	
	/** 解开屏锁 */
	unlock: function () {
		var that = this;
		
		if (!that._lock) return that;
		that._lockMask[0].ondblclick = null;
		that._lockMaskWrap[0].style.display = 'none';
		that._lock = false;
		if (_box) {
			that._lockMaskWrap.remove();
			that._lockMaskWrap = that._lockMask = null;
		};

		return that;
	},
	
	// 插入修饰结构 （只运行一次）
	_outerTmpl: function () {
		var that = this,
			wrap = that._wrap;
			
		wrap.innerHTML = _tmplEngine('outer', that.config);
		document.body.appendChild(wrap);
		
		that._getDOM(wrap);
		_isIE6 && that._pngFix(wrap);
	},
	
	// 插入内容区域 （可能运行多次）
	_innerTmpl: function () {
		var that = this,
			config = that.config,
			DOM = that.DOM,
			center = DOM.center;
		
		center.html(_tmplEngine('inner', config));
		that._getDOM(center[0]);
		_isIE6 && that._pngFix(center[0]);
		DOM.se.css('cursor', config.resize ? 'se-resize' : 'auto');
		DOM.title.css('cursor', config.drag ? 'move' : 'auto');
		
		that.button(config.button).content(config.content, config.tmpl);
	},
	
	// 获取元素
	_getDOM: function (parent) {
		var DOM = this.DOM,
			els = parent.getElementsByTagName('*'),
			elsLen = els.length;
			
		for (var i = 0; i < elsLen; i ++) {
			DOM[els[i].className.split('aui_')[1]] = $(els[i]);
		};
	},
	
	// 百分比转换成数值
	_toNumber: function (scale, length) {
		return scale.indexOf('%') !== -1 ?
			parseInt(length * scale.split('%')[0] / 100) : null;
	},
	
	// 让IE6 CSS支持PNG背景
	_pngFix: function (parent) {
		var i = 0, elem, png, pngPath,
			path = artDialog.defaults.path + '/skin/',
			list = parent.getElementsByTagName('*');
		
		for (; i < list.length; i ++) {
			elem = list[i];
			png = elem.currentStyle['png'];
			if (png) {
				pngPath = path + png;
				elem.style.backgroundImage = 'none';
				elem.style.p = pngPath;
				elem.runtimeStyle.filter = "progid:DXImageTransform.Microsoft." +
					"AlphaImageLoader(src='" + pngPath + "',sizingMethod='crop')";
			};
		};
		elem = null;
	},
	
	// 强制覆盖IE6下拉控件
	_selectFix: function () {
		var elem = this.DOM.wrap[0],
			expando = _expando + 'iframeMask',
			iframe = elem[expando],
			width = elem.offsetWidth,
			height = elem.offsetHeight,
			left = - (width - elem.clientWidth) / 2 + 'px',
			top = - (height - elem.clientHeight) / 2 + 'px';

		width = width + 'px';
		height = height + 'px';
		
		if (iframe) {
			iframe.style.width = width;
			iframe.style.height = height;
		} else {
			iframe = elem.appendChild(document.createElement('iframe'));
			elem[expando] = iframe;
			iframe.src = 'about:blank';
			iframe.style.cssText = 'position:absolute;z-index:-1;left:'
				+ left + ';top:' + top
				+ ';width:' + width + ';height:' + height
				+ ';filter:alpha(opacity=0)';
		};
	},
	
	// 解析HTML片段中自定义类型脚本:
	// <script type="text/dialog"></script>
	_runScript: function (elem) {
		var fun, i = 0, n = 0,
			tags = elem.getElementsByTagName('script'),
			length = tags.length,
			script = [];
			
		for (; i < length; i ++) {
			if (tags[i].type === 'text/dialog') {
				script[n] = tags[i].innerHTML;
				n ++;
			};
		};
		
		if (script.length) {
			script = script.join('');
			fun = new Function(script);
			fun.call(this);
		};
	},
	
	// 自动切换定位类型
	_autoPositionType: function () {
		var that = this;
		that[that.config.fixed ? '_setFixed' : '_setAbsolute']();
	},
	
	
	// 设置静止定位
	// IE6 Fixed @see: http://www.planeart.cn/?p=877
	_setFixed: (function () {
		_isIE6 && $(function () {
			var bg = 'backgroundAttachment';
			if (_$html.css(bg) !== 'fixed' && _$body.css(bg) !== 'fixed') {
				_$html.css({
					backgroundImage: 'url(about:blank)',
					backgroundAttachment: 'fixed'
				});
			};
		});
		
		return function () {
			var $elem = this.DOM.wrap,
				style = $elem[0].style;
			
			if (_isIE6) {
				var left = parseInt($elem.css('left')),
					top = parseInt($elem.css('top')),
					sLeft = _$document.scrollLeft(),
					sTop = _$document.scrollTop(),
					txt = '(document.documentElement)';
				
				this._setAbsolute();
				style.setExpression('left', 'eval(' + txt + '.scrollLeft + '
					+ (left - sLeft) + ') + "px"');
				style.setExpression('top', 'eval(' + txt + '.scrollTop + '
					+ (top - sTop) + ') + "px"');
			} else {
				style.position = 'fixed';
			};
		};
	}()),
	
	// 设置绝对定位
	_setAbsolute: function () {
		var style = this.DOM.wrap[0].style;
			
		if (_isIE6) {
			style.removeExpression('left');
			style.removeExpression('top');
		};

		style.position = 'absolute';
	},
	
	// 按钮事件触发
	_trigger: function (id) {
		var that = this,
			fn = that._listeners[id] && that._listeners[id].callback;
		return typeof fn !== 'function' || fn.call(that, window) !== false ?
			that.close() : that;
	},
	
	// 事件代理
	_eventProxy: function () {
		var winResize, resizeTimer,
			that = this,
			DOM = that.DOM,
			winSize = _$window.width() * _$window.height();
			
		that._click = function (event) {
			var target = event.target, callbackID;
			
			if (target.disabled) return false; // IE BUG
			
			if (target === DOM.close[0]) {
				that._trigger(that.config.noText);
				return false;
			} else {
				callbackID = target[_expando + 'callback'];
				callbackID && that._trigger(callbackID);
			};
		};
		
		that._eventDown = function () {
			that.zIndex();
		};
		
		winResize = function () {
			var newSize,
				oldSize = winSize,
				elem = that.config.follow,
				width = that._scaleWidth,
				height = that._scaleHeight,
				left = that._scaleLeft,
				top = that._scaleTop;
			
			if ('all' in document) {
				// IE6~7 window.onresize bug
				newSize = _$window.width() * _$window.height();
				winSize = newSize;
				if (oldSize === newSize) return;
			};
			
			if (width || height) that.size(width, height);
			
			if (elem) {
				that.follow(elem);
			} else if (left || top) {
				that.position(left, top);
			};
		};
		
		that._winResize = function () {
			resizeTimer && clearTimeout(resizeTimer);
			resizeTimer = setTimeout(function () {
				winResize();
			}, 40);
		};
		
		// 监听点击
		DOM.wrap.bind('click', that._click)
		.bind(_eventDown, that._eventDown);
		
		// 窗口调节事件
		_$window.bind('resize', that._winResize);
	},
	
	// 卸载事件代理
	_uneventProxy: function () {
		var that = this,
			DOM = that.DOM;
		
		DOM.wrap.unbind('click', that._click)
		.unbind(_eventDown, that._eventDown);
		_$window.unbind('resize', that._winResize);
	}
	
};

artDialog.fn._init.prototype = artDialog.fn;
$.fn.dialog = $.fn.artDialog = function () {
	var config = arguments;
	this[this.live ? 'live' : 'bind']('click', function () {
		artDialog.apply(this, config);
		return false;
	});
	return this;
};



/** 最顶层的对话框API */
artDialog.focus = null;



/** 对话框列表 */
artDialog.list = {};



// 微型模板引擎 - JavaScript Micro-Templating
// @see http://ejohn.org/blog/javascript-micro-templating/
_tmplEngine = (function(){
	var cache = {};
	return function tmpl(str, data){
		var fn = !/\W/.test(str) ?
		  cache[str] = cache[str] ||
			tmpl(artDialog.templates[str]) :
		  new Function("obj",
			"var p=[],print=function(){p.push.apply(p,arguments);};" +
			"with(obj){p.push('" +
			str
			  .replace(/[\r\t\n]/g, " ")
			  .split("<%").join("\t")
			  .replace(/((^|%>)[^\t]*)'/g, "$1\r")
			  .replace(/\t=(.*?)%>/g, "',$1,'")
			  .split("\t").join("');")
			  .split("%>").join("p.push('")
			  .split("\r").join("\\'")
		  + "');}return p.join('');");
		return data ? fn(data) : fn;
	};
})();



// 全局快捷键
_$document.bind('keydown', function (event) {
	var target = event.target,
		nodeName = target.nodeName,
		rinput = /^INPUT|TEXTAREA$/,
		api = artDialog.focus,
		keyCode = event.keyCode;

	if (!api || !api.config.esc || rinput.test(nodeName)) return;
		
	keyCode === 27 && api._trigger(api.config.noText);
});



// 获取artDialog路径
_path = window['_artDialog_path'] || (function (script, i, me) {
	for (i in script) {
		// 如果通过第三方脚本加载器加载本文件，请保证文件名含有"artDialog"字符
		if (script[i].src && script[i].src.indexOf('artDialog') !== -1) me = script[i];
	};
	
	_thisScript = me || script[script.length - 1];
	me = _thisScript.src.replace(/\\/g, '/');
	return me.lastIndexOf('/') < 0 ? '.' : me.substring(0, me.lastIndexOf('/'));
}(document.getElementsByTagName('script')));




// 无阻塞载入CSS (如"artDialog.js?skin=aero")
_skin = window['_artDialog_skin'] || _thisScript.src.split('skin=')[1];
if (_skin) {
	var link = document.createElement('link');
	link.rel = 'stylesheet';
	link.href = _path + '/skin/' + _skin + '.css?' + artDialog.fn.version;
	$('head')[0].appendChild(link);
};



// 触发浏览器预先缓存背景图片
_$window.bind('load', function () {
	setTimeout(function () {
		if (!_count) {
			artDialog({left:-9999, time: 9, lock:false, focus: false});
		};
	}, 150);
});



// 开启IE6 CSS背景图片缓存
try {
	document.execCommand('BackgroundImageCache', false, true);
} catch (e) {};



/** 模板 */
artDialog.templates = {

	// Template: UI Framework
	outer: [
	'<div class="aui_outer">',
		'<table class="aui_border">',
			'<tbody>',
				'<tr>',
					'<td class="aui_nw"></td>',
					'<td class="aui_n"></td>',
					'<td class="aui_ne"></td>',
				'</tr>',
				'<tr>',
					'<td class="aui_w"></td>',
					'<td class="aui_center"></td>',
					'<td class="aui_e"></td>',
				'</tr>',
				'<tr>',
					'<td class="aui_sw"></td>',
					'<td class="aui_s"></td>',
					'<td class="aui_se"></td>',
				'</tr>',
			'</tbody>',
		'</table>',
	'</div>'].join(''),
	
	// Template: Content Framework
	inner: [
	'<table class="aui_inner">',
		'<tbody>',
			'<tr>',
				'<td <% if (icon) { %>colspan="2"<% } %> class="aui_header">',
					'<div class="aui_titleWrap">',
						'<div class="aui_title" <% if (title === false) { %>style="display:none"<% } %>>',
							'<%=title%>',
						'</div>',
						'<a class="aui_close" <% if (noFn === false) { %>style="display:none"<% } %>',
							' href="javascript:/*artDialog*/;"><%=closeText%></a>',
					'</div>',
				'</td>',
			'</tr>',
			'<tr>',
				'<% if (icon) { %>',
				'<td class="aui_icon">',
					'<div class="aui_icon_<%=icon%>" style="',
						'background:url(<%=path%>/skin/icons/<%=icon%>.png) no-repeat center center;_png:icons/<%=icon%>.png',
					'"></div>',
				'</td>',
				'<% } %>',
				'<td class="aui_main">',
					'<div class="aui_content" style="padding:<%=padding%>">',
						'<div class="aui_loading"><span>loading..</span></div>',
					'</div>',
				'</td>',
			'</tr>',
			'<tr>',
				'<td <% if (icon) { %>colspan="2"<% } %> class="aui_footer">',
					'<div class="aui_buttons" style="display:none"></div>',
				'</td>',
			'</tr>',
		'</tbody>',
	'</table>'].join('')

};



/**
 * 默认配置
 */
artDialog.defaults = {

	content: null,				// 消息内容
	title: '\u6d88\u606f',		// 标题. 默认'消息'
	tmpl: null,					// 供插件定义内容模板
	button: null,				// 自定义按钮
	yesFn: null,				// 确定按钮回调函数
	noFn: null,					// 取消按钮回调函数
	yesText: '\u786E\u5B9A',	// 确定按钮文本. 默认'确定'
	noText: '\u53D6\u6D88',		// 取消按钮文本. 默认'取消'
	closeText: '\xd7',			// 关闭按钮文本. 默认'×'
	width: 'auto',				// 内容宽度
	height: 'auto',				// 内容高度
	minWidth: 96,				// 最小宽度限制
	minHeight: 32,				// 最小高度限制
	padding: '20px 25px',		// 内容与边界填充距离
	skin: '',					// 皮肤名(多皮肤共存预留接口)
	icon: null,					// 消息图标名称
	initFn: null,				// 对话框初始化后执行的函数
	closeFn: null,				// 对话框关闭执行的函数
	time: null,					// 自动关闭时间
	esc: true,					// 是否支持Esc键关闭
	focus: true,				// 是否支持对话框按钮聚焦
	show: true,					// 初始化后是否显示对话框
	follow: null,				// 跟随某元素
	path: _path,				// artDialog路径
	lock: false,				// 是否锁屏
	background: '#000',			// 遮罩颜色
	opacity: 0.7,				// 遮罩透明度
	duration: 300,				// 遮罩透明度渐变动画速度
	fixed: false,				// 是否静止定位
	left: '50%',				// X轴坐标
	top: 'goldenRatio',			// Y轴坐标
	zIndex: 1987,				// 对话框叠加高度值(重要：此值不能超过浏览器最大限制)
	resize: true,				// 是否允许用户调节尺寸
	drag: true					// 是否允许用户拖动位置
	
};

window.artDialog = $.dialog = $.artDialog = artDialog;
}((window.jQuery && (window.art = jQuery)) || window.art, this));







/*!
	可选外置模块：话框拖拽支持
------------------------------------------------------------------*/
;(function ($) {

var _dragEvent, _use,
	_$window = $(window),
	_$document = $(document),
	_elem = document.documentElement,
	_isIE6 = !-[1,] && !('minWidth' in _elem.style),
	_isLosecapture = 'onlosecapture' in _elem,
	_isSetCapture = 'setCapture' in _elem,
	_isTouch = 'createTouch' in _elem,
	_startEvent = _isTouch ? 'touchstart' : 'mousedown',
	_moveEvent = _isTouch ? 'touchmove' : 'mousemove',
	_endEvent = _isTouch ? 'touchend' : 'mouseup';


// 拖拽事件
artDialog.dragEvent = function () {
	var that = this,
		proxy = function (name) {
			var fn = that[name];
			that[name] = function () {
				return fn.apply(that, arguments);
			};
		};
		
	proxy('start');
	proxy('move');
	proxy('end');
};

artDialog.dragEvent.prototype = {

	// 开始拖拽
	onstart: $.noop,
	start: function (event) {
		var that = this;
		event = that._fix(event);
		_$document
			.bind(_moveEvent, that.move)
			.bind(_endEvent, that.end);
			
		that._clientX = event.clientX;
		that._clientY = event.clientY;
		that.onstart(event.clientX, event.clientY);
		event.preventDefault();
	},
	
	// 正在拖拽
	onmove: $.noop,
	move: function (event) {
		var that = this;
		event = that._fix(event);
		event.preventDefault();
		that.onmove(
			event.clientX - that._clientX,
			event.clientY - that._clientY
		);
	},
	
	// 结束拖拽
	onend: $.noop,
	end: function (event) {
		var that = this;
		event = that._fix(event);
		_$document
			.unbind(_moveEvent, that.move)
			.unbind(_endEvent, that.end);
		
		event && that.onend(event.clientX, event.clientY);
	},
	
	_fix: function (event) {
		return _isTouch ? event.touches.item(0) : event;
	}
	
};

_use = function (event) {
	var limit, startWidth, startHeight, startLeft, startTop, isResize,
		api = artDialog.focus,
		config = api.config,
		DOM = api.DOM,
		wrap = DOM.wrap,
		title = DOM.title,
		main = DOM.main;

	// 清除文本选择
	var clsSelect = 'getSelection' in window ? function () {
		window.getSelection().removeAllRanges();
	} : function () {
		try {
			document.selection.empty();
		} catch (e) {};
	};
	
	// 对话框准备拖动
	_dragEvent.onstart = function (x, y) {
		if (isResize) {
			startWidth = main[0].offsetWidth;
			startHeight = main[0].offsetHeight;
		} else {
			startLeft = parseInt(wrap.css('left'));
			startTop = parseInt(wrap.css('top'));
		};
		
		_$document.bind('dblclick', _dragEvent.end);
		!_isIE6 && _isLosecapture ?
			title.bind('losecapture', _dragEvent.end) :
			_$window.bind('blur', _dragEvent.end);
		_isSetCapture && title[0].setCapture();
		
		wrap.addClass('aui_state_drag');
		api.focus();
	};
	
	// 对话框拖动进行中
	_dragEvent.onmove = function (x, y) {
		if (isResize) {
			var wrapStyle = wrap[0].style,
				style = main[0].style,
				width = x + startWidth,
				height = y + startHeight;
			
			wrapStyle.width = 'auto';
			style.width = Math.max(0, width) + 'px';
			wrapStyle.width = wrap[0].offsetWidth + 'px';
			style.height = Math.max(0, height) + 'px';
		} else {
			var style = wrap[0].style,
				left = x + startLeft,
				top = y + startTop;

			style.left = Math.max(limit.minX, Math.min(limit.maxX, left)) + 'px';
			style.top = Math.max(limit.minY, Math.min(limit.maxY, top)) + 'px';
		};
			
		clsSelect();
		_isIE6 && api._selectFix();
	};
	
	// 对话框拖动结束
	_dragEvent.onend = function (x, y) {
		_$document.unbind('dblclick', _dragEvent.end);
		!_isIE6 && _isLosecapture ?
			title.unbind('losecapture', _dragEvent.end) :
			_$window.unbind('blur', _dragEvent.end);
		_isSetCapture && title[0].releaseCapture();
		
		_isIE6 && api._autoPositionType();
		
		wrap.removeClass('aui_state_drag');
	};
	
	isResize = event.target === DOM.se[0] ? true : false;
	limit = (function () {
		var maxX, maxY,
			wrap = api.DOM.wrap[0],
			fixed = wrap.style.position === 'fixed',
			ow = wrap.offsetWidth,
			oh = wrap.offsetHeight,
			ww = _$window.width(),
			wh = _$window.height(),
			dl = fixed ? 0 : _$document.scrollLeft(),
			dt = fixed ? 0 : _$document.scrollTop(),
			
		// 坐标最大值限制
		maxX = ww - ow + dl;
		maxY = wh - oh + dt;
		
		return {
			minX: dl,
			minY: dt,
			maxX: maxX,
			maxY: maxY
		};
	})();
	
	_dragEvent.start(event);
};

// 代理 mousedown 事件触发对话框拖动
_$document.bind(_startEvent, function (event) {
	var api = artDialog.focus;
	if (!api) return;

	var target = event.target,
		config = api.config,
		DOM = api.DOM;
	
	if (config.drag !== false && target === DOM.title[0]
	|| config.resize !== false && target === DOM.se[0]) {
		_dragEvent = _dragEvent || new artDialog.dragEvent();
		_use(event);
	};
});

})(window.jQuery || window.art);

/*
 * artDialog iframeTools
 * Date: 2011-27-15 18:39
 * http://code.google.com/p/artdialog/
 * (c) 2009-2010 TangBin, http://www.planeArt.cn
 *
 * This is licensed under the GNU LGPL, version 2.1 or later.
 * For details, see: http://creativecommons.org/licenses/LGPL/2.1/
 */
 
;(function ($, window, artDialog, undefined) {

var _parentDialog, _proxyDialog, _zIndex,
	_data = '_ARTDIALOG.DATA',
	_open = '_ARTDIALOG.OPEN',
	_origin = '_ARTDIALOG.ORIGIN',
	_winName = window.name = window.name || '_ARTDIALOG.WINNAME' + (new Date).getTime();


/** 获取 artDialog 可跨级调用的最高层的 window 对象 */
var _parent = artDialog.parent = function () {
	var parent = window,
	test = function (name) {
		try {
			var doc = window[name].document;	// 跨域|无权限
			doc.getElementsByTagName; 			// chrome 本地安全限制
		} catch (e) {
			return false;
		};
		// 框架集无法显示第三方元素
		return doc.getElementsByTagName('frameset').length === 0;
	};
	
	if (test('top')) {
		parent = window.top;
	} else if (test('parent')) {
		parent = window.parent;
	};
	
	return parent;
}();


_parentDialog = _parent.artDialog;


// 获取顶层页面对话框叠加值
_zIndex = function () {
	return _parentDialog.defaults.zIndex;
};



/**
 * 跨框架数据共享接口
 * @see		http://www.planeart.cn/?p=1554
 * @param	{String}	存储的数据名
 * @param	{Any}		将要存储的任意数据(无此项则返回被查询的数据)
 */
artDialog.data = function (name, value) {
	var parent = artDialog.parent,
		cache = parent[_data] || {};
	parent[_data] = cache;
	
	if (value) {
		cache[name] = value;
	} else {
		return cache[name];
	};
	return cache;
};


/**
 * 数据共享删除接口
 * @param	{String}	删除的数据名
 */
artDialog.removeData = function (name) {
	var cache = artDialog.parent[_data];
	if (cache && cache[name]) delete cache[name];
};


/** 跨框架普通对话框 */
artDialog.through = _proxyDialog = function () {
	var api = _parentDialog.apply(this, arguments);
		
	// 缓存从当前window（可能为iframe）调出所有跨框架对话框，window卸载后全部关闭这些对话框
	// 因为iframe注销后也会从内存中删除其创建的对象，这样可以防止回调函数报错
	if (_parent !== window) artDialog.list[api.config.id] = api;
	return api;
};

// 框架页面卸载前关闭所有穿越的对话框
_parent !== window && $(window).bind('unload', function () {
	var list = artDialog.list;
	for (var i in list) {
		if (list[i]) {
			list[i].close();
			delete list[i];
		};
	};
});


/**
 * 弹窗 (iframe)
 * @param	{String}	地址
 * @param	{Object}	配置参数. 这里传入的回调函数接收的第1个参数为iframe内部window对象
 * @param	{Boolean}	是否允许缓存. 默认true
 */
artDialog.open = function (url, options, cache) {
	options = options || {};
	
	var api, titleWrap, loadInit, oldLocation,
		iframe, $iframe, $idoc, iwin, ibody,
		parent = artDialog.parent,
		iframeCss = 'width:100%;height:100%;border:none 0',
		title = options.title,
		$content, $main;
		
	if (cache === false) {
		var ts = (new Date()).getTime(),
			ret = url.replace(/([?&])_=[^&]*/, "$1_=" + ts );
		url = ret + ((ret === url) ? (/\?/.test(url) ? "&" : "?") + "_=" + ts : "");
	};
		
	var load = function () {
		var iWidth, iHeight, newLocation,
			loading = api.DOM.loading,
			aConfig = api.config;
			
		titleWrap.style.display = 'block';
		$content.addClass('aui_state_full');
		
		if (!loadInit && loading) loading.remove();
		
		iwin = iframe.contentWindow;
		try {
			ibody = iwin.document.body;// 检测跨域
		} catch (e) {
			$iframe.unbind('load', load);
			loadInit = true;
			iframe.style.cssText = iframeCss;
			api.position(aConfig.left, aConfig.top);
			return;
		};
		
		$(iwin).bind('unload', unload);
		newLocation = iwin.location.href;
		if (newLocation === oldLocation) return;
		oldLocation = newLocation;
		$idoc = $(iwin.document);
		
		iWidth = aConfig.width === 'auto' ?
			$idoc.width() + parseInt($(ibody).css('marginLeft')) : aConfig.width;
		iHeight = aConfig.height === 'auto' ?
			$idoc.height() : aConfig.height;
			
		if (!loadInit) {
			setTimeout(function () {
				iframe.style.cssText = iframeCss;
			}, 0);// setTimeout: 防止IE6~7导致对话框样式渲染异常
		};
		
		api.size(iWidth, iHeight);
		aConfig.follow ?
			api.follow(aConfig.follow) :
			api.position(aConfig.left, aConfig.top);
		
		!loadInit && options.initFn && options.initFn.call(api, iwin, parent);
		loadInit = true;
	};
	
	var unload = function () {
		loadInit = false;
	};
		
	var config = {
		zIndex: _zIndex(),
		tmpl: null,
		initFn: function () {
			api = this;
			var DOM = api.DOM;
			$main = DOM.main;
			$content = DOM.content;
			titleWrap = DOM.titleWrap[0];
			!title && (titleWrap.style.display = 'none');
			
			iframe = api.iframe = parent.document.createElement('iframe');
			iframe.src = url;
			iframe.name = 'Open' + api.config.id;
			iframe.style.cssText = 'position:absolute;left:-9999em;top:-9999em;border:none 0;background:transparent';
			iframe.setAttribute('frameborder', 0, 0);
			iframe.setAttribute('allowTransparency', true);
			$iframe = $(iframe);
			api.content().appendChild(iframe);
			
			iwin = iframe.contentWindow;
			
			try {
				iwin.name = iframe.name;
				artDialog.data(iframe.name + _open, api);
				artDialog.data(iframe.name + _origin, window);
				$(iwin).bind('unload', unload);
			} catch (e) {};
			
			$iframe.bind('load', load);
		},
		closeFn: function () {
			$iframe.css('display', 'none').unbind('load', load);
			
			options.closeFn && options.closeFn.call(this, iframe.contentWindow, parent);
			$content.removeClass('aui_state_full');
			
			// 重要！需要重置iframe地址，否则下次出现的对话框在IE6、7无法聚焦input
			// IE删除iframe后，iframe仍然会留在内存中出现上述问题，置换src是最容易解决的方法
			$iframe[0].src = 'about:blank';
			$iframe.remove();
			
			try {
				artDialog.removeData(iframe.name + _open);
				artDialog.removeData(iframe.name + _origin);
				$(iwin).unbind('unload', unload);
			} catch (e) {};
		}
	};
	
	// 回调函数第一个参数指向iframe内部window对象
	if (typeof options.yesFn === 'function') config.yesFn = function () {
		return options.yesFn.call(api, iframe.contentWindow, parent);
	};
	if (typeof options.noFn === 'function') config.noFn = function () {
		return options.noFn.call(api, iframe.contentWindow, parent);
	};
	
	delete options.content;

	for (var i in options) {
		if (config[i] === undefined) config[i] = options[i];
	};
	
	return _proxyDialog(config);
};


/** 获取open方法控制接口(在open打开的iframe内部私有方法) */
artDialog.open.api = artDialog.data(_winName + _open);


/** 获取open方法触发来源页面window(在open打开的iframe内部私有方法) */
artDialog.open.origin = artDialog.data(_winName + _origin) || window;


/** artDialog.open 打开的iframe页面里关闭对话框快捷方法 */
artDialog.close = function () {
	var api = artDialog.data(_winName + _open);
	api && api.close();
	return false;
};

// 点击iframe内容切换叠加高度
_parent != window && $(document).bind('mousedown', function () {
	var api = artDialog.open.api;
	api && api.zIndex();
});


/**
 * Ajax填充内容
 * @param	{String}			地址
 * @param	{Object, String}	配置参数. 传入字符串表示使用模板引擎解析JSON生产内容
 * @param	{Boolean}			是否允许缓存. 默认true
 */
artDialog.load = function(url, options, cache){
	cache = cache || false;
	var opt = options || {},
		tmpl = typeof opt === 'string' ? opt : null;
		
	var config = {
		zIndex: _zIndex(),
		initFn: function(here){
			var api = this,
				aConfig = api.config;
			
			$.ajax({
				url: url,
				success: function (content) {
					if (tmpl) content = 'JSON' in window && JSON.parse ?
						JSON.parse(content) : eval('(' + content + ')');
						
					api.content(content, tmpl);
					aConfig.follow ?
						api.follow(aConfig.follow) :
						api.position(aConfig.left, aConfig.top);
	
					opt.initFn && opt.initFn.call(api, here);				
				},
				cache: cache
			});
			
		}
	};
		
	if (opt.tmpl) {
		tmpl = opt.tmpl;
		opt.tmpl = null;
	};
	
	delete options.content;
	
	for (var i in opt) {
		if (config[i] === undefined) config[i] = opt[i];
	};
	
	return _proxyDialog(config);
};


/**
 * 警告
 * @param	{String}	消息内容
 */
artDialog.alert = function (content) {
	return _proxyDialog({
		id: 'Alert',
		zIndex: _zIndex(),
		icon: 'warning',
		fixed: true,
		lock: true,
		content: content,
		yesFn: true
	});
};


/**
 * 确认
 * @param	{String}	消息内容
 * @param	{Function}	确定按钮回调函数
 * @param	{Function}	取消按钮回调函数
 */
artDialog.confirm = function (content, yes, no) {
	return _proxyDialog({
		id: 'Confirm',
		zIndex: _zIndex(),
		icon: 'question',
		fixed: true,
		lock: true,
		opacity: .1,
		content: content,
		yesFn: function (here) {
			return yes.call(this, here);
		},
		noFn: function (here) {
			return no && no.call(this, here);
		}
	});
};


/**
 * 提问
 * @param	{String}	提问内容
 * @param	{Function}	回调函数. 接收参数：输入值
 * @param	{String}	默认值
 */
artDialog.prompt = function (content, yes, value) {
	value = value || '';
	var input;
	
	return _proxyDialog({
		id: 'Prompt',
		zIndex: _zIndex(),
		icon: 'question',
		fixed: true,
		lock: true,
		opacity: .1,
		content: [
			'<div style="margin-bottom:5px;font-size:12px">',
				content,
			'</div>',
			'<div>',
				'<input value="',
					value,
				'" style="width:18em;padding:6px 4px" />',
			'</div>'
			].join(''),
		initFn: function () {
			input = this.DOM.content.find('input')[0];
			input.select();
			input.focus();
		},
		yesFn: function (here) {
			return yes && yes.call(this, input.value, here);
		},
		noFn: true
	});
};


/**
 * 短暂提示
 * @param	{String}	提示内容
 * @param	{Number}	显示时间 (默认1.5秒)
 */
artDialog.tips = function (content, time) {
	return _proxyDialog({
		id: 'Tips',
		zIndex: _zIndex(),
		title: false,
		noFn: false,
		fixed: true
	})
	.content('<div style="padding: 0 1em;">' + content + '</div>')
	.position('50%', 'goldenRatio')
	.time(time || 1.5);
};


// 增强artDialog拖拽体验
// - 防止鼠标落入iframe导致不流畅
// - 对超大对话框拖动优化
$(function () {
	var event = artDialog.dragEvent;
	if (!event) return;

	var $window = $(window),
		$document = $(document),
		positionType = !-[1,] && !('minWidth' in document.documentElement.style)
		? 'absolute' : 'fixed',
		dragEvent = event.prototype,
		mask = document.createElement('div'),
		style = mask.style;
		
	style.cssText = 'display:none;position:' + positionType + ';left:0;top:0;width:100%;height:100%;'
	+ 'cursor:move;filter:alpha(opacity=0);opacity:0;background:#FFF';
		
	document.body.appendChild(mask);
	dragEvent._start = dragEvent.start;
	dragEvent._end = dragEvent.end;
	
	dragEvent.start = function () {
		var DOM = artDialog.focus.DOM,
			main = DOM.main[0],
			iframe = DOM.content[0].getElementsByTagName('iframe')[0];
		
		dragEvent._start.apply(this, arguments);
		style.display = 'block';
		style.zIndex = artDialog.defaults.zIndex + 3;
		
		if (positionType === 'absolute') {
			style.width = $window.width() + 'px';
			style.height = $window.height() + 'px';
			style.left = $document.scrollLeft() + 'px';
			style.top = $document.scrollTop() + 'px';
		};
		
		if (iframe && main.offsetWidth * main.offsetHeight > 160000) {
			main.style.visibility = 'hidden';
		};
	};
	
	dragEvent.end = function () {
		var dialog = artDialog.focus;
		dragEvent._end.apply(this, arguments);
		style.display = 'none';
		if (dialog) dialog.DOM.main[0].style.visibility = 'visible';
	};
});

})(window.jQuery || window.art, this, this.artDialog);

//2011-07-17 更新 晃动功能
art.dialog.fn.shake = function (){
    var style = this.DOM.wrap[0].style,
        p = [4, 8, 4, 0, -4, -8, -4, 0],
        fx = function () {
            style.marginLeft = p.shift() + 'px';
            if (p.length <= 0) {
                style.marginLeft = 0;
                clearInterval(timerId);
            };
        };
    p = p.concat(p.concat(p));
    timerId = setInterval(fx, 13);
    return this;
};

