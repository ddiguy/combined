# script details
<a name="top-of-page">
Read each section below for usage info
</a>

Follow the links to take you to the section for more details on usage:</br>
-  [autorefresh-web-page](#autorefresh-web-page)
-  [dns-soa-check](#dns-soa-check)


# autorefresh-web-page
<a name="autorefresh-web-page">
Purpose is to automatically refresh web page
</a>

[![NPM Version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]

When you create a bookmark putting in this javascript, it allows you to set a web page refresh interval.  This is useful if you want to have a web page refreshed automatically to maintain your user session.  One case for this would be if your corporation has implemented web page timeouts, and you want to stay logged in.  Another use case for this is if you want to watch stock prices or sports scores without refreshing the web page manually.

## Installation

Google Chrome and Safari (tested on Mac OS X):

```sh
1.  Create new bookmark (name it something recognizable, such as Autorefresh)
2.  In the bookmark, paste the contents of the web_page_refresh.js file 
```

## Usage example

A few motivating and useful examples of how your product can be used. Spice this up with code blocks and potentially more screenshots.

_For more examples and usage, please refer to the [Wiki][wiki]._

Click to go back to [top of page](#top-of-page).


# dns-soa-check

<a name="dns-soa-check">
Used to verify if serial numbers on slave DNS servers are not higher than master DNS server</br>
</a>
</br>
Sample output when script is run:

```sh
$ ./checking.sh 
======== SOA Check ========

Master DNS server
( 1) dns4.p09.nsone.net.. 1495573222

Slave DNS servers:

( 1) dns4.p09.nsone.net.. 1495573222 [OK]
( 2) ns3.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 3) ns1.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 4) ns4.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 5) dns1.p09.nsone.net.. 1495573222 [OK]
( 6) dns3.p09.nsone.net.. 1495573222 [OK]
( 7) ns2.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 8) dns2.p09.nsone.net.. 1495573222 [OK]
```

## Release History

* 0.0.1
    * The first proper release

## Meta

Brian Bullard – [@BrianBullard94](https://twitter.com/brianbullard94) – brian@ddidns.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/ddiguy](https://github.com/ddiguy)

## Contributing

1. Fork it (<https://github.com/ddiguy/autorefresh-web-page/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
