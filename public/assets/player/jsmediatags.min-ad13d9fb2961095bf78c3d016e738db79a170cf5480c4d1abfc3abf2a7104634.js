!function(e){"object"==typeof exports&&"undefined"!=typeof module?module.exports=e():"function"==typeof define&&define.amd?define([],e):("undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:this).jsmediatags=e()}(function(){return function n(i,a,o){function s(r,e){if(!a[r]){if(!i[r]){var t="function"==typeof require&&require;if(!e&&t)return t(r,!0);if(u)return u(r,!0);throw(t=Error("Cannot find module '"+r+"'")).code="MODULE_NOT_FOUND",t}t=a[r]={exports:{}},i[r][0].call(t.exports,function(e){var t=i[r][1][e];return s(t||e)},t,t.exports,n,i,a,o)}return a[r].exports}for(var u="function"==typeof require&&require,e=0;e<o.length;e++)s(o[e]);return s}({1:[function(){},{}],2:[function(e,t){t.exports=XMLHttpRequest},{}],3:[function(e,t){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();e=function(){function r(e){if(!(this instanceof r))throw new TypeError("Cannot call a class as a function");var t;if(t=Object.getPrototypeOf(r).call(this),!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return(t=!t||"object"!=typeof t&&"function"!=typeof t?this:t)._array=e,t._size=e.length,t._isInitialized=!0,t}return n(r,e("./MediaFileReader")),i(r,[{key:"init",value:function(e){setTimeout(e.onSuccess,0)}},{key:"loadRange",value:function(e,t){setTimeout(t.onSuccess,0)}},{key:"getByteAt",value:function(e){return this._array[e]}}],[{key:"canReadFile",value:function(e){return Array.isArray(e)||"function"==typeof Buffer&&Buffer.isBuffer(e)}}]),r}(),t.exports=e},{"./MediaFileReader":10}],4:[function(e,t){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}(),a=e("./ChunkedFileData");e=function(){function r(e){if(!(this instanceof r))throw new TypeError("Cannot call a class as a function");var t;if(t=Object.getPrototypeOf(r).call(this),!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return(t=!t||"object"!=typeof t&&"function"!=typeof t?this:t)._blob=e,t._fileData=new a,t}return n(r,e("./MediaFileReader")),i(r,[{key:"_init",value:function(e){this._size=this._blob.size,setTimeout(e.onSuccess,1)}},{key:"loadRange",value:function(t,r){var n=this,e=(this._blob.slice||this._blob.mozSlice||this._blob.webkitSlice).call(this._blob,t[0],t[1]+1),i=new FileReader;i.onloadend=function(e){e=new Uint8Array(i.result),n._fileData.addData(t[0],e),r.onSuccess()},i.onerror=i.onabort=function(){r.onError&&r.onError({type:"blob",info:i.error})},i.readAsArrayBuffer(e)}},{key:"getByteAt",value:function(e){return this._fileData.getByteAt(e)}}],[{key:"canReadFile",value:function(e){return"undefined"!=typeof Blob&&e instanceof Blob||"undefined"!=typeof File&&e instanceof File}}]),r}(),t.exports=e},{"./ChunkedFileData":5,"./MediaFileReader":10}],5:[function(e,t){var r=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();e=function(){function e(){if(!(this instanceof e))throw new TypeError("Cannot call a class as a function");this._fileData=[]}return r(e,null,[{key:"NOT_FOUND",get:function(){return-1}}]),r(e,[{key:"addData",value:function(e,t){var r=e+t.length-1,n=this._getChunkRange(e,r);if(-1===n.startIx)this._fileData.splice(n.insertIx||0,0,{offset:e,data:t});else{var i=this._fileData[n.startIx],a=this._fileData[n.endIx],o=(r=r<a.offset+a.data.length-1,{offset:Math.min(e,i.offset),data:t});e>i.offset&&(i=this._sliceData(i.data,0,e-i.offset),o.data=this._concatData(i,t)),r&&(i=this._sliceData(o.data,0,a.offset-o.offset),o.data=this._concatData(i,a.data)),this._fileData.splice(n.startIx,n.endIx-n.startIx+1,o)}}},{key:"_concatData",value:function(e,t){if("undefined"!=typeof ArrayBuffer&&ArrayBuffer.isView(e)){var r=new e.constructor(e.length+t.length);return r.set(e,0),r.set(t,e.length),r}return e.concat(t)}},{key:"_sliceData",value:function(e,t,r){return e.slice?e.slice(t,r):e.subarray(t,r)}},{key:"_getChunkRange",value:function(e,t){for(var r=-1,n=-1,i=0,a=0;a<this._fileData.length;i=++a){var o=this._fileData[a].offset,s=o+this._fileData[a].data.length;if(t<o-1)break;if(e<=s+1&&o-1<=t){r=a;break}}if(-1===r)return{startIx:-1,endIx:-1,insertIx:i};for(a=r;a<this._fileData.length&&((o=this._fileData[a].offset)-1<=t&&(n=a),!(t<=(s=o+this._fileData[a].data.length)+1));a++);return-1===n&&(n=r),{startIx:r,endIx:n}}},{key:"hasDataRange",value:function(e,t){for(var r=0;r<this._fileData.length;r++){var n=this._fileData[r];if(t<n.offset)break;if(e>=n.offset&&t<n.offset+n.data.length)return!0}return!1}},{key:"getByteAt",value:function(e){for(var t,r=0;r<this._fileData.length;r++){var n=this._fileData[r].offset,i=n+this._fileData[r].data.length-1;if(n<=e&&e<=i){t=this._fileData[r];break}}if(t)return t.data[e-t.offset];throw Error("Offset "+e+" hasn't been loaded yet.")}}]),e}(),t.exports=e},{}],6:[function(e,t,r){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();r=e("./MediaTagReader"),e("./MediaFileReader"),e=function(){function t(){if(!(this instanceof t))throw new TypeError("Cannot call a class as a function");var e=Object.getPrototypeOf(t).apply(this,arguments);if(!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?this:e}return n(t,r),i(t,[{key:"_loadData",value:function(e,t){var r=e.getSize();e.loadRange([r-128,r-1],t)}},{key:"_parseData",value:function(e){var t=e.getSize()-128,r=e.getStringWithCharsetAt(t+3,30).toString(),n=e.getStringWithCharsetAt(t+33,30).toString(),i=e.getStringWithCharsetAt(t+63,30).toString(),a=e.getStringWithCharsetAt(t+93,4).toString(),o=e.getByteAt(t+97+28),s=e.getByteAt(t+97+29);if(0==o&&0!=s){o="1.1";var u=e.getStringWithCharsetAt(t+97,28).toString()}else o="1.0",u=e.getStringWithCharsetAt(t+97,30).toString(),s=0;return r={type:"ID3",version:o,tags:{title:r,artist:n,album:i,year:a,comment:u,genre:(t=e.getByteAt(t+97+30))<255?l[t]:""}},s&&(r.tags.track=s),r}}],[{key:"getTagIdentifierByteRange",value:function(){return{offset:-128,length:128}}},{key:"canReadTagFormat",value:function(e){return"TAG"===String.fromCharCode.apply(String,e.slice(0,3))}}]),t}();var l="Blues;Classic Rock;Country;Dance;Disco;Funk;Grunge;Hip-Hop;Jazz;Metal;New Age;Oldies;Other;Pop;R&B;Rap;Reggae;Rock;Techno;Industrial;Alternative;Ska;Death Metal;Pranks;Soundtrack;Euro-Techno;Ambient;Trip-Hop;Vocal;Jazz+Funk;Fusion;Trance;Classical;Instrumental;Acid;House;Game;Sound Clip;Gospel;Noise;AlternRock;Bass;Soul;Punk;Space;Meditative;Instrumental Pop;Instrumental Rock;Ethnic;Gothic;Darkwave;Techno-Industrial;Electronic;Pop-Folk;Eurodance;Dream;Southern Rock;Comedy;Cult;Gangsta;Top 40;Christian Rap;Pop/Funk;Jungle;Native American;Cabaret;New Wave;Psychadelic;Rave;Showtunes;Trailer;Lo-Fi;Tribal;Acid Punk;Acid Jazz;Polka;Retro;Musical;Rock & Roll;Hard Rock;Folk;Folk-Rock;National Folk;Swing;Fast Fusion;Bebob;Latin;Revival;Celtic;Bluegrass;Avantgarde;Gothic Rock;Progressive Rock;Psychedelic Rock;Symphonic Rock;Slow Rock;Big Band;Chorus;Easy Listening;Acoustic;Humour;Speech;Chanson;Opera;Chamber Music;Sonata;Symphony;Booty Bass;Primus;Porn Groove;Satire;Slow Jam;Club;Tango;Samba;Folklore;Ballad;Power Ballad;Rhythmic Soul;Freestyle;Duet;Punk Rock;Drum Solo;Acapella;Euro-House;Dance Hall".split(";");t.exports=e},{"./MediaFileReader":10,"./MediaTagReader":11}],7:[function(e,t){function s(e){var t;switch(e){case 0:t="iso-8859-1";break;case 1:t="utf-16";break;case 2:t="utf-16be";break;case 3:t="utf-8"}return t}e("./MediaFileReader");var i={APIC:function(e,t,r,n,i){i=i||"3",n=e;var a=s(r.getByteAt(e));switch(i){case"2":i=r.getStringAt(e+1,3),e+=4;break;case"3":case"4":e+=1+(i=r.getStringWithCharsetAt(e+1,t-1)).bytesReadCount;break;default:throw Error("Couldn't read ID3v2 major version.")}var o=r.getByteAt(e,1);o=u[o];return e+=1+(a=r.getStringWithCharsetAt(e+1,t-(e-n)-1,a)).bytesReadCount,{format:i.toString(),type:o,description:a.toString(),data:r.getBytesAt(e,n+t-e)}},COMM:function(e,t,r,n,i){var a=e,o=s(r.getByteAt(e));return n=r.getStringAt(e+1,3),e+=4+(i=r.getStringWithCharsetAt(e+4,t-4,o)).bytesReadCount,e=r.getStringWithCharsetAt(e,a+t-e,o),{language:n,short_description:i.toString(),text:e.toString()}}};i.COM=i.COMM,i.PIC=function(e,t,r,n){return i.APIC(e,t,r,n,"2")},i.PCNT=function(e,t,r){return r.getLongAt(e,!1)},i.CNT=i.PCNT,i["T*"]=function(e,t,r,n){return n=s(r.getByteAt(e)),r.getStringWithCharsetAt(e+1,t-1,n).toString()},i["W*"]=function(e,t,r,n){return void 0!==(n=s(r.getByteAt(e)))?r.getStringWithCharsetAt(e+1,t-1,n).toString():r.getStringWithCharsetAt(e,t,n).toString()},i.TCON=function(){return i["T*"].apply(this,arguments).replace(/^\(\d+\)/,"")},i.TCO=i.TCON,i.USLT=function(e,t,r,n,i){var a=e,o=s(r.getByteAt(e));return n=r.getStringAt(e+1,3),e+=4+(i=r.getStringWithCharsetAt(e+4,t-4,o)).bytesReadCount,e=r.getStringWithCharsetAt(e,a+t-e,o),{language:n,descriptor:i.toString(),lyrics:e.toString()}},i.ULT=i.USLT;var u="Other;32x32 pixels 'file icon' (PNG only);Other file icon;Cover (front);Cover (back);Leaflet page;Media (e.g. label side of CD);Lead artist/lead performer/soloist;Artist/performer;Conductor;Band/Orchestra;Composer;Lyricist/text writer;Recording Location;During recording;During performance;Movie/video screen capture;A bright coloured fish;Illustration;Band/artist logotype;Publisher/Studio logotype".split(";");t.exports={getFrameReaderFunction:function(e){return e in i?i[e]:"T"===e[0]?i["T*"]:"W"===e[0]?i["W*"]:null}}},{"./MediaFileReader":10}],8:[function(e,t,r){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();r=e("./MediaTagReader"),e("./MediaFileReader");var a=e("./ArrayFileReader"),d=e("./ID3v2FrameReader");e=function(){function t(){if(!(this instanceof t))throw new TypeError("Cannot call a class as a function");var e=Object.getPrototypeOf(t).apply(this,arguments);if(!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?this:e}return n(t,r),i(t,[{key:"_loadData",value:function(e,t){e.loadRange([6,9],{onSuccess:function(){e.loadRange([0,10+e.getSynchsafeInteger32At(6)-1],t)},onError:t.onError})}},{key:"_parseData",value:function(e,t){var r=0;if(4<(l=e.getByteAt(r+3)))return{type:"ID3",version:">2.4",tags:{}};var n=e.getByteAt(r+4),i=e.isBitSetAt(r+5,7),a=e.isBitSetAt(r+5,6),o=e.isBitSetAt(r+5,5),s=e.getSynchsafeInteger32At(r+6);r+=10;if(a)r=r+(e.getLongAt(r,!0)+4);var u,l={type:"ID3",version:"2."+l+"."+n,major:l,revision:n,flags:{unsynchronisation:i,extended_header:a,experimental_indicator:o,footer_present:!1},size:s,tags:{}};r=this._readFrames(r,s-10,e,l,t);for(u in f)f.hasOwnProperty(u)&&(s=this._getFrameData(r,f[u]))&&(l.tags[u]=s);for(var c in r)r.hasOwnProperty(c)&&(l.tags[c]=r[c]);return l}},{key:"_getUnsyncFileReader",value:function(e,t,r){for(e=e.getBytesAt(t,r),t=0;t<e.length-1;t++)255===e[t]&&0===e[t+1]&&e.splice(t+1,1);return new a(e)}},{key:"_readFrames",value:function(e,t,r,n,i){var a={};for(i&&(i=this._expandShortcutTags(i));e<t;){var o=this._readFrameHeader(r,e,n),s=o.id;if(0===o.size)break;if(!s)break;var u=o.flags,l=o.size,c=e+o.headerSize,f=r;e+=o.headerSize+o.size,i&&-1===i.indexOf(s)||((n.flags.unsynchronisation||u&&u.format.unsynchronisation)&&(f=this._getUnsyncFileReader(f,c,l),c=0,l=f.getSize()),u&&u.format.data_length_indicator&&(c+=4,l-=4),u=(o=d.getFrameReaderFunction(s))?o(c,l,f,u):null,l={id:s,size:l,description:c=this._getFrameDescription(s),data:u},s in a?(a[s].id&&(a[s]=[a[s]]),a[s].push(l)):a[s]=l)}return a}},{key:"_readFrameHeader",value:function(e,t,r){var n=null;switch(r=r.major){case 2:var i=e.getStringAt(t,3),a=e.getInteger24At(t+3,!0),o=6;break;case 3:i=e.getStringAt(t,4),a=e.getLongAt(t+4,!0),o=10;break;case 4:i=e.getStringAt(t,4),a=e.getSynchsafeInteger32At(t+4),o=10}return i&&2<r&&(n=this._readFrameFlags(e,t+8)),{id:i||"",size:a||0,headerSize:o||0,flags:n}}},{key:"_readFrameFlags",value:function(e,t){return{message:{tag_alter_preservation:e.isBitSetAt(t,6),file_alter_preservation:e.isBitSetAt(t,5),read_only:e.isBitSetAt(t,4)},format:{grouping_identity:e.isBitSetAt(t+1,7),compression:e.isBitSetAt(t+1,3),encryption:e.isBitSetAt(t+1,2),unsynchronisation:e.isBitSetAt(t+1,1),data_length_indicator:e.isBitSetAt(t+1,0)}}}},{key:"_getFrameData",value:function(e,t){for(var r,n=0;r=t[n];n++)if(r in e)return e[r].data}},{key:"_getFrameDescription",value:function(e){return e in o?o[e]:"Unknown"}},{key:"getShortcuts",value:function(){return f}}],[{key:"getTagIdentifierByteRange",value:function(){return{offset:0,length:10}}},{key:"canReadTagFormat",value:function(e){return"ID3"===String.fromCharCode.apply(String,e.slice(0,3))}}]),t}();var o={BUF:"Recommended buffer size",CNT:"Play counter",COM:"Comments",CRA:"Audio encryption",CRM:"Encrypted meta frame",ETC:"Event timing codes",EQU:"Equalization",GEO:"General encapsulated object",IPL:"Involved people list",LNK:"Linked information",MCI:"Music CD Identifier",MLL:"MPEG location lookup table",PIC:"Attached picture",POP:"Popularimeter",REV:"Reverb",RVA:"Relative volume adjustment",SLT:"Synchronized lyric/text",STC:"Synced tempo codes",TAL:"Album/Movie/Show title",TBP:"BPM (Beats Per Minute)",TCM:"Composer",TCO:"Content type",TCR:"Copyright message",TDA:"Date",TDY:"Playlist delay",TEN:"Encoded by",TFT:"File type",TIM:"Time",TKE:"Initial key",TLA:"Language(s)",TLE:"Length",TMT:"Media type",TOA:"Original artist(s)/performer(s)",TOF:"Original filename",TOL:"Original Lyricist(s)/text writer(s)",TOR:"Original release year",TOT:"Original album/Movie/Show title",TP1:"Lead artist(s)/Lead performer(s)/Soloist(s)/Performing group",TP2:"Band/Orchestra/Accompaniment",TP3:"Conductor/Performer refinement",TP4:"Interpreted, remixed, or otherwise modified by",TPA:"Part of a set",TPB:"Publisher",TRC:"ISRC (International Standard Recording Code)",TRD:"Recording dates",TRK:"Track number/Position in set",TSI:"Size",TSS:"Software/hardware and settings used for encoding",TT1:"Content group description",TT2:"Title/Songname/Content description",TT3:"Subtitle/Description refinement",TXT:"Lyricist/text writer",TXX:"User defined text information frame",TYE:"Year",UFI:"Unique file identifier",ULT:"Unsychronized lyric/text transcription",WAF:"Official audio file webpage",WAR:"Official artist/performer webpage",WAS:"Official audio source webpage",WCM:"Commercial information",WCP:"Copyright/Legal information",WPB:"Publishers official webpage",WXX:"User defined URL link frame",AENC:"Audio encryption",APIC:"Attached picture",ASPI:"Audio seek point index",COMM:"Comments",COMR:"Commercial frame",ENCR:"Encryption method registration",EQU2:"Equalisation (2)",EQUA:"Equalization",ETCO:"Event timing codes",GEOB:"General encapsulated object",GRID:"Group identification registration",IPLS:"Involved people list",LINK:"Linked information",MCDI:"Music CD identifier",MLLT:"MPEG location lookup table",OWNE:"Ownership frame",PRIV:"Private frame",PCNT:"Play counter",POPM:"Popularimeter",POSS:"Position synchronisation frame",RBUF:"Recommended buffer size",RVA2:"Relative volume adjustment (2)",RVAD:"Relative volume adjustment",RVRB:"Reverb",SEEK:"Seek frame",SYLT:"Synchronized lyric/text",SYTC:"Synchronized tempo codes",TALB:"Album/Movie/Show title",TBPM:"BPM (beats per minute)",TCOM:"Composer",TCON:"Content type",TCOP:"Copyright message",TDAT:"Date",TDLY:"Playlist delay",TDRC:"Recording time",TDRL:"Release time",TDTG:"Tagging time",TENC:"Encoded by",TEXT:"Lyricist/Text writer",TFLT:"File type",TIME:"Time",TIPL:"Involved people list",TIT1:"Content group description",TIT2:"Title/songname/content description",TIT3:"Subtitle/Description refinement",TKEY:"Initial key",TLAN:"Language(s)",TLEN:"Length",TMCL:"Musician credits list",TMED:"Media type",TMOO:"Mood",TOAL:"Original album/movie/show title",TOFN:"Original filename",TOLY:"Original lyricist(s)/text writer(s)",TOPE:"Original artist(s)/performer(s)",TORY:"Original release year",TOWN:"File owner/licensee",TPE1:"Lead performer(s)/Soloist(s)",TPE2:"Band/orchestra/accompaniment",TPE3:"Conductor/performer refinement",TPE4:"Interpreted, remixed, or otherwise modified by",TPOS:"Part of a set",TPRO:"Produced notice",TPUB:"Publisher",TRCK:"Track number/Position in set",TRDA:"Recording dates",TRSN:"Internet radio station name",TRSO:"Internet radio station owner",TSOA:"Album sort order",TSOP:"Performer sort order",TSOT:"Title sort order",TSIZ:"Size",TSRC:"ISRC (international standard recording code)",TSSE:"Software/Hardware and settings used for encoding",TSST:"Set subtitle",TYER:"Year",TXXX:"User defined text information frame",UFID:"Unique file identifier",USER:"Terms of use",USLT:"Unsychronized lyric/text transcription",WCOM:"Commercial information",WCOP:"Copyright/Legal information",WOAF:"Official audio file webpage",WOAR:"Official artist/performer webpage",WOAS:"Official audio source webpage",WORS:"Official internet radio station homepage",WPAY:"Payment",WPUB:"Publishers official webpage",WXXX:"User defined URL link frame"},f={title:["TIT2","TT2"],artist:["TPE1","TP1"],album:["TALB","TAL"],year:["TYER","TYE"],comment:["COMM","COM"],track:["TRCK","TRK"],genre:["TCON","TCO"],picture:["APIC","PIC"],lyrics:["USLT","ULT"]};t.exports=e},{"./ArrayFileReader":3,"./ID3v2FrameReader":7,"./MediaFileReader":10,"./MediaTagReader":11}],9:[function(e,t,r){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();r=e("./MediaTagReader"),e("./MediaFileReader"),e=function(){function t(){if(!(this instanceof t))throw new TypeError("Cannot call a class as a function");var e=Object.getPrototypeOf(t).apply(this,arguments);if(!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?this:e}return n(t,r),i(t,[{key:"_loadData",value:function(e,t){var r=this;e.loadRange([0,16],{onSuccess:function(){r._loadAtom(e,0,"",t)},onError:t.onError})}},{key:"_loadAtom",value:function(e,t,r,n){if(t>=e.getSize())n.onSuccess();else{var i=this,a=e.getLongAt(t,!0);if(0==a||isNaN(a))n.onSuccess();else{var o=e.getStringAt(t+4,4);if(this._isContainerAtom(o)){"meta"==o&&(t+=4);var s=(r?r+".":"")+o;"moov.udta.meta.ilst"===s?e.loadRange([t,t+a],n):e.loadRange([t+8,t+8+8],{onSuccess:function(){i._loadAtom(e,t+8,s,n)},onError:n.onError})}else e.loadRange([t+a,t+a+8],{onSuccess:function(){i._loadAtom(e,t+a,r,n)},onError:n.onError})}}}},{key:"_isContainerAtom",value:function(e){return 0<=["moov","udta","meta","ilst"].indexOf(e)}},{key:"_canReadAtom",value:function(e){return"----"!==e}},{key:"_parseData",value:function(e,t){var r={};for(var n in t=this._expandShortcutTags(t),this._readAtom(r,e,0,e.getSize(),t),a)if(a.hasOwnProperty(n)){var i=r[a[n]];i&&(r[n]="track"===n?i.data.track:i.data)}return{type:"MP4",ftyp:e.getStringAt(8,4),version:e.getLongAt(12,!0),tags:r}}},{key:"_readAtom",value:function(e,t,r,n,i,a,o){o=void 0===o?"":o+"  ";for(var s=r;s<r+n;){var u=t.getLongAt(s,!0);if(0==u)break;var l=t.getStringAt(s+4,4);if(this._isContainerAtom(l)){"meta"==l&&(s+=4),this._readAtom(e,t,s+8,u-8,i,(a?a+".":"")+l,o);break}(!i||0<=i.indexOf(l))&&"moov.udta.meta.ilst"===a&&this._canReadAtom(l)&&(e[l]=this._readMetadataAtom(t,s)),s+=u}}},{key:"_readMetadataAtom",value:function(e,t){var r,n=e.getLongAt(t,!0),i=e.getStringAt(t+4,4),a=e.getInteger24At(t+16+1,!0);a=u[a];if("trkn"==i)r={track:e.getByteAt(t+16+11),total:e.getByteAt(t+16+13)};else{var o=t+24,s=n-24;switch(a){case"text":r=e.getStringWithCharsetAt(o,s,"utf-8").toString();break;case"uint8":r=e.getShortAt(o,!1);break;case"jpeg":case"png":r={format:"image/"+a,data:e.getBytesAt(o,s)}}}return{id:i,size:n,description:l[i]||"Unknown",data:r}}},{key:"getShortcuts",value:function(){return a}}],[{key:"getTagIdentifierByteRange",value:function(){return{offset:0,length:16}}},{key:"canReadTagFormat",value:function(e){return"ftyp"===String.fromCharCode.apply(String,e.slice(4,8))}}]),t}();var u={0:"uint8",1:"text",13:"jpeg",14:"png",21:"uint8"},l={"\xa9alb":"Album","\xa9ART":"Artist",aART:"Album Artist","\xa9day":"Release Date","\xa9nam":"Title","\xa9gen":"Genre",gnre:"Genre",trkn:"Track Number","\xa9wrt":"Composer","\xa9too":"Encoding Tool","\xa9enc":"Encoded By",cprt:"Copyright",covr:"Cover Art","\xa9grp":"Grouping",keyw:"Keywords","\xa9lyr":"Lyrics","\xa9cmt":"Comment",tmpo:"Tempo",cpil:"Compilation",disk:"Disc Number",tvsh:"TV Show Name",tven:"TV Episode ID",tvsn:"TV Season",tves:"TV Episode",tvnn:"TV Network",desc:"Description",ldes:"Long Description",sonm:"Sort Name",soar:"Sort Artist",soaa:"Sort Album",soco:"Sort Composer",sosn:"Sort Show",purd:"Purchase Date",pcst:"Podcast",purl:"Podcast URL",catg:"Category",hdvd:"HD Video",stik:"Media Type",rtng:"Content Rating",pgap:"Gapless Playback",apID:"Purchase Account",sfID:"Country Code"},a={title:"\xa9nam",artist:"\xa9ART",album:"\xa9alb",year:"\xa9day",comment:"\xa9cmt",track:"trkn",genre:"\xa9gen",picture:"covr",lyrics:"\xa9lyr"};t.exports=e},{"./MediaFileReader":10,"./MediaTagReader":11}],10:[function(e,t){var r=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}(),n=e("./StringUtils");e=function(){function e(){if(!(this instanceof e))throw new TypeError("Cannot call a class as a function");this._isInitialized=!1,this._size=0}return r(e,[{key:"init",value:function(e){var t=this;if(!this._isInitialized)return this._init({onSuccess:function(){t._isInitialized=!0,e.onSuccess()},onError:e.onError});setTimeout(e.onSuccess,1)}},{key:"_init",value:function(){throw Error("Must implement init function")}},{key:"loadRange",value:function(){throw Error("Must implement loadRange function")}},{key:"getSize",value:function(){if(!this._isInitialized)throw Error("init() must be called first.");return this._size}},{key:"getByteAt",value:function(){throw Error("Must implement getByteAt function")}},{key:"getBytesAt",value:function(e,t){for(var r=Array(t),n=0;n<t;n++)r[n]=this.getByteAt(e+n);return r}},{key:"isBitSetAt",value:function(e,t){return 0!=(this.getByteAt(e)&1<<t)}},{key:"getSByteAt",value:function(e){return 127<(e=this.getByteAt(e))?e-256:e}},{key:"getShortAt",value:function(e,t){var r=t?(this.getByteAt(e)<<8)+this.getByteAt(e+1):(this.getByteAt(e+1)<<8)+this.getByteAt(e);return r<0&&(r+=65536),r}},{key:"getSShortAt",value:function(e,t){var r=this.getShortAt(e,t);return 32767<r?r-65536:r}},{key:"getLongAt",value:function(e,t){var r=this.getByteAt(e),n=this.getByteAt(e+1),i=this.getByteAt(e+2),a=this.getByteAt(e+3);return(r=t?(((r<<8)+n<<8)+i<<8)+a:(((a<<8)+i<<8)+n<<8)+r)<0&&(r+=4294967296),r}},{key:"getSLongAt",value:function(e,t){var r=this.getLongAt(e,t);return 2147483647<r?r-4294967296:r}},{key:"getInteger24At",value:function(e,t){var r=this.getByteAt(e),n=this.getByteAt(e+1),i=this.getByteAt(e+2);return(r=t?((r<<8)+n<<8)+i:((i<<8)+n<<8)+r)<0&&(r+=16777216),r}},{key:"getStringAt",value:function(e,t){for(var r=[],n=e,i=0;n<e+t;n++,i++)r[i]=String.fromCharCode(this.getByteAt(n));return r.join("")}},{key:"getStringWithCharsetAt",value:function(e,t,r){switch(e=this.getBytesAt(e,t),(r||"").toLowerCase()){case"utf-16":case"utf-16le":case"utf-16be":r=n.readUTF16String(e,"utf-16be"===r);break;case"utf-8":r=n.readUTF8String(e);break;default:r=n.readNullTerminatedString(e)}return r}},{key:"getCharAt",value:function(e){return String.fromCharCode(this.getByteAt(e))}},{key:"getSynchsafeInteger32At",value:function(e){var t=this.getByteAt(e),r=this.getByteAt(e+1),n=this.getByteAt(e+2);return 127&this.getByteAt(e+3)|(127&n)<<7|(127&r)<<14|(127&t)<<21}}],[{key:"canReadFile",value:function(){throw Error("Must implement canReadFile function")}}]),e}(),t.exports=e},{"./StringUtils":12}],11:[function(e,t){var r=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();e("./MediaFileReader"),e=function(){function t(e){if(!(this instanceof t))throw new TypeError("Cannot call a class as a function");this._mediaFileReader=e,this._tags=null}return r(t,[{key:"setTagsToRead",value:function(e){return this._tags=e,this}},{key:"read",value:function(t){var r=this;this._mediaFileReader.init({onSuccess:function(){r._loadData(r._mediaFileReader,{onSuccess:function(){var e=r._parseData(r._mediaFileReader,r._tags);t.onSuccess(e)},onError:t.onError})},onError:t.onError})}},{key:"getShortcuts",value:function(){return{}}},{key:"_loadData",value:function(){throw Error("Must implement _loadData function")}},{key:"_parseData",value:function(){throw Error("Must implement _parseData function")}},{key:"_expandShortcutTags",value:function(e){if(!e)return null;for(var t,r=[],n=this.getShortcuts(),i=0;t=e[i];i++)r=r.concat(n[t]||[t]);return r}}],[{key:"getTagIdentifierByteRange",value:function(){throw Error("Must implement")}},{key:"canReadTagFormat",value:function(){throw Error("Must implement")}}]),t}(),t.exports=e},{"./MediaFileReader":10}],12:[function(e,t){var n=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}(),l=function(){function r(e,t){if(!(this instanceof r))throw new TypeError("Cannot call a class as a function");this._value=e,this.bytesReadCount=t,this.length=e.length}return n(r,[{key:"toString",value:function(){return this._value}}]),r}();t.exports={readUTF16String:function(e,t,r){var n=0,i=1,a=0;r=Math.min(r||e.length,e.length),254==e[0]&&255==e[1]?(t=!0,n=2):255==e[0]&&254==e[1]&&(t=!1,n=2),t&&(i=0,a=1),t=[];for(var o=0;n<r;o++){var s=e[n+i],u=(s<<8)+e[n+a];n=n+2;if(0==u)break;s<216||224<=s?t[o]=String.fromCharCode(u):(s=(e[n+i]<<8)+e[n+a],n+=2,t[o]=String.fromCharCode(u,s))}return new l(t.join(""),n)},readUTF8String:function(e,t){var r=0;t=Math.min(t||e.length,e.length),239==e[0]&&187==e[1]&&191==e[2]&&(r=3);for(var n=[],i=0;r<t;i++){if(0==(s=e[r++]))break;if(s<128)n[i]=String.fromCharCode(s);else if(194<=s&&s<224){var a=e[r++];n[i]=String.fromCharCode(((31&s)<<6)+(63&a))}else if(224<=s&&s<240){a=e[r++];var o=e[r++];n[i]=String.fromCharCode(((255&s)<<12)+((63&a)<<6)+(63&o))}else if(240<=s&&s<245){var s=((7&s)<<18)+((63&(a=e[r++]))<<12)+((63&(o=e[r++]))<<6)+(63&e[r++])-65536;n[i]=String.fromCharCode(55296+(s>>10),56320+(1023&s))}}return new l(n.join(""),r)},readNullTerminatedString:function(e,t){var r=[];t=t||e.length;for(var n=0;n<t;){var i=e[n++];if(0==i)break;r[n-1]=String.fromCharCode(i)}return new l(r.join(""),n)}}},{}],13:[function(e,t,r){function n(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}(),o=e("./ChunkedFileData");(r=function(){function a(e){if(!(this instanceof a))throw new TypeError("Cannot call a class as a function");var t;if(t=Object.getPrototypeOf(a).call(this),!this)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return(t=!t||"object"!=typeof t&&"function"!=typeof t?this:t)._url=e,t._fileData=new o,t}return n(a,e("./MediaFileReader")),i(a,[{key:"_init",value:function(e){a._config.avoidHeadRequests?this._fetchSizeWithGetRequest(e):this._fetchSizeWithHeadRequest(e)}},{key:"_fetchSizeWithHeadRequest",value:function(t){var r=this;this._makeXHRRequest("HEAD",null,{onSuccess:function(e){(e=r._parseContentLength(e))?(r._size=e,t.onSuccess()):r._fetchSizeWithGetRequest(t)},onError:t.onError})}},{key:"_fetchSizeWithGetRequest",value:function(r){var n=this,e=this._roundRangeToChunkMultiple([0,0]);this._makeXHRRequest("GET",e,{onSuccess:function(e){var t=n._parseContentRange(e);if(e=n._getXhrResponseContent(e),t){if(null==t.instanceLength)return void n._fetchEntireFile(r);n._size=t.instanceLength}else n._size=e.length;n._fileData.addData(0,e),r.onSuccess()},onError:r.onError})}},{key:"_fetchEntireFile",value:function(t){var r=this;this._makeXHRRequest("GET",null,{onSuccess:function(e){e=r._getXhrResponseContent(e),r._size=e.length,r._fileData.addData(0,e),t.onSuccess()},onError:t.onError})}},{key:"_getXhrResponseContent",value:function(e){return e.responseBody||e.responseText||""}},{key:"_parseContentLength",value:function(e){return null==(e=this._getResponseHeader(e,"Content-Length"))?e:parseInt(e,10)}},{key:"_parseContentRange",value:function(e){if(e=this._getResponseHeader(e,"Content-Range")){var t=e.match(/bytes (\d+)-(\d+)\/(?:(\d+)|\*)/i);if(!t)throw Error("FIXME: Unknown Content-Range syntax: ",e);return{firstBytePosition:parseInt(t[1],10),lastBytePosition:parseInt(t[2],10),instanceLength:t[3]?parseInt(t[3],10):null}}return null}},{key:"loadRange",value:function(t,r){var n=this;n._fileData.hasDataRange(t[0],Math.min(n._size,t[1]))?setTimeout(r.onSuccess,1):((t=this._roundRangeToChunkMultiple(t))[1]=Math.min(n._size,t[1]),this._makeXHRRequest("GET",t,{onSuccess:function(e){e=n._getXhrResponseContent(e),n._fileData.addData(t[0],e),r.onSuccess()},onError:r.onError}))}},{key:"_roundRangeToChunkMultiple",value:function(e){return[e[0],e[0]+1024*Math.ceil((e[1]-e[0]+1)/1024)-1]}},{key:"_makeXHRRequest",value:function(e,t,r){var n=this._createXHRObject(),i=function(){200===n.status||206===n.status?r.onSuccess(n):r.onError&&r.onError({type:"xhr",info:"Unexpected HTTP status "+n.status+".",xhr:n}),n=null};"undefined"!=typeof n.onload?(n.onload=i,n.onerror=function(){r.onError&&r.onError({type:"xhr",info:"Generic XHR error, check xhr object.",xhr:n})}):n.onreadystatechange=function(){4===n.readyState&&i()},a._config.timeoutInSec&&(
n.timeout=1e3*a._config.timeoutInSec,n.ontimeout=function(){r.onError&&r.onError({type:"xhr",info:"Timeout after "+n.timeout/1e3+"s. Use jsmediatags.Config.setXhrTimeout to override.",xhr:n})}),n.open(e,this._url),n.overrideMimeType("text/plain; charset=x-user-defined"),t&&this._setRequestHeader(n,"Range","bytes="+t[0]+"-"+t[1]),this._setRequestHeader(n,"If-Modified-Since","Sat, 01 Jan 1970 00:00:00 GMT"),n.send(null)}},{key:"_setRequestHeader",value:function(e,t,r){a._config.disallowedXhrHeaders.indexOf(t.toLowerCase())<0&&e.setRequestHeader(t,r)}},{key:"_hasResponseHeader",value:function(e,t){if(!(r=e.getAllResponseHeaders()))return!1;for(var r=r.split("\r\n"),n=[],i=0;i<r.length;i++)n[i]=r[i].split(":")[0].toLowerCase();return 0<=n.indexOf(t.toLowerCase())}},{key:"_getResponseHeader",value:function(e,t){return this._hasResponseHeader(e,t)?e.getResponseHeader(t):null}},{key:"getByteAt",value:function(e){return 255&this._fileData.getByteAt(e).charCodeAt(0)}},{key:"_createXHRObject",value:function(){if("undefined"==typeof window)return new(e("xhr2").XMLHttpRequest);if(window.XMLHttpRequest)return new window.XMLHttpRequest;throw Error("XMLHttpRequest is not supported")}}],[{key:"canReadFile",value:function(e){return"string"==typeof e&&/^[a-z]+:\/\//i.test(e)}},{key:"setConfig",value:function(e){for(var t in e)e.hasOwnProperty(t)&&(this._config[t]=e[t]);for(e=this._config.disallowedXhrHeaders,t=0;t<e.length;t++)e[t]=e[t].toLowerCase()}}]),a}())._config={avoidHeadRequests:!1,disallowedXhrHeaders:[],timeoutInSec:30},t.exports=r},{"./ChunkedFileData":5,"./MediaFileReader":10,xhr2:2}],14:[function(e,t,r){function n(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var i=function(){function n(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(e,t,r){return t&&n(e.prototype,t),r&&n(e,r),e}}();e("./MediaFileReader"),r=e("./NodeFileReader");var a=e("./XhrFileReader"),o=e("./BlobFileReader"),s=e("./ArrayFileReader");e("./MediaTagReader");var u=e("./ID3v1TagReader"),l=e("./ID3v2TagReader");e=e("./MP4TagReader");var c=[],f=[],d=function(){function t(e){n(this,t),this._file=e}return i(t,[{key:"setTagsToRead",value:function(e){return this._tagsToRead=e,this}},{key:"setFileReader",value:function(e){return this._fileReader=e,this}},{key:"setTagReader",value:function(e){return this._tagReader=e,this}},{key:"read",value:function(t){var r=new(this._getFileReader())(this._file),n=this;r.init({onSuccess:function(){n._getTagReader(r,{onSuccess:function(e){new e(r).setTagsToRead(n._tagsToRead).read(t)},onError:t.onError})},onError:t.onError})}},{key:"_getFileReader",value:function(){return this._fileReader?this._fileReader:this._findFileReader()}},{key:"_findFileReader",value:function(){for(var e=0;e<c.length;e++)if(c[e].canReadFile(this._file))return c[e];throw Error("No suitable file reader found for ",this._file)}},{key:"_getTagReader",value:function(e,t){if(this._tagReader){var r=this._tagReader;setTimeout(function(){t.onSuccess(r)},1)}else this._findTagReader(e,t)}},{key:"_findTagReader",value:function(r,n){for(var e=[],t=[],i=r.getSize(),a=0;a<f.length;a++){var o=f[a].getTagIdentifierByteRange();0<=o.offset&&o.offset<i/2||o.offset<0&&o.offset<-i/2?e.push(f[a]):t.push(f[a])}var s=!1;a={onSuccess:function(){if(s){for(var e=0;e<f.length;e++){var t=f[e].getTagIdentifierByteRange();t=r.getBytesAt(0<=t.offset?t.offset:t.offset+i,t.length);if(f[e].canReadTagFormat(t))return void n.onSuccess(f[e])}n.onError&&n.onError({type:"tagFormat",info:"No suitable tag reader found"})}else s=!0},onError:n.onError};this._loadTagIdentifierRanges(r,e,a),this._loadTagIdentifierRanges(r,t,a)}},{key:"_loadTagIdentifierRanges",value:function(e,t,r){if(0===t.length)setTimeout(r.onSuccess,1);else{for(var n=[Number.MAX_VALUE,0],i=e.getSize(),a=0;a<t.length;a++){var o=0<=(s=t[a].getTagIdentifierByteRange()).offset?s.offset:s.offset+i,s=o+s.length-1;n[0]=Math.min(o,n[0]),n[1]=Math.max(s,n[1])}e.loadRange(n,r)}}}]),t}(),g=function(){function t(){n(this,t)}return i(t,null,[{key:"addFileReader",value:function(e){return c.push(e),t}},{key:"addTagReader",value:function(e){return f.push(e),t}},{key:"removeTagReader",value:function(e){return 0<=(e=f.indexOf(e))&&f.splice(e,1),t}},{key:"EXPERIMENTAL_avoidHeadRequests",value:function(){a.setConfig({avoidHeadRequests:!0})}},{key:"setDisallowedXhrHeaders",value:function(e){a.setConfig({disallowedXhrHeaders:e})}},{key:"setXhrTimeoutInSec",value:function(e){a.setConfig({timeoutInSec:e})}}]),t}();g.addFileReader(a).addFileReader(o).addFileReader(s).addTagReader(l).addTagReader(u).addTagReader(e),"undefined"!=typeof process&&g.addFileReader(r),t.exports={read:function(e,t){new d(e).read(t)},Reader:d,Config:g}},{"./ArrayFileReader":3,"./BlobFileReader":4,"./ID3v1TagReader":6,"./ID3v2TagReader":8,"./MP4TagReader":9,"./MediaFileReader":10,"./MediaTagReader":11,"./NodeFileReader":1,"./XhrFileReader":13}]},{},[14])(14)});