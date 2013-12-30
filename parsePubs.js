// CREATED:2011-06-29 17:19:03 by Brian McFee <bmcfee@cs.ucsd.edu>
//  Parse json objects for publications

function getTitle(pub) {
    return pub.title;
}

function getVenue(pub) {
    return pub.venue;
}

function getDate(pub) {
    return pub.date; 
}

function getNotes(pub) {
    if (typeof(pub.notes) == 'undefined') { return ''; }
    return pub.notes ; 
}

function getAuthor(author) {
    if (author.url != null) {
        return '<a href="' + author.url + '">' + author.name + '</a>';
    } else {
        return author.name;
    }
}

function getAuthors(pub) {

    var authors = [];
    for (var i = 0; i < pub.authors.length; i++) {
        authors.push(getAuthor(pub.authors[i]));
    }

    var authorStr = null;
    if (authors.length == 2) {
        authorStr = authors[0] + ' and ' + authors[1];
    } else {
        authorStr = 'and ' + authors[authors.length-1];
        for (i = authors.length - 2; i >= 0; i--) {
            authorStr = authors[i] + ', ' + authorStr;
        }
    }

    return authorStr;
}

function getTags(pub) {

    if (typeof(pub.tags) == 'undefined') { return ''; }

    var tagstr = pub.tags[0];
    for (var i = 1; i < pub.tags.length; i++) {
        tagstr += ', ' + pub.tags[i].replace(' ', '&nbsp;');
    }
    return tagstr;
}

function makeLink(url, str) {
    return '<a href="' + url + '">' + str + '</a>';
}

function makeIconLink(url, cname, str) {
    return '<a href="' + url + '"><span class="glyphicon glyphicon-' + cname + '" alt="' + str + '"></span></a>';
}

function getLinks(pub) {

    var links = [];

    if (typeof(pub.slides)  != 'undefined') { links.push(makeIconLink(pub.slides,'film', 'slides')); }
    if (typeof(pub.poster)  != 'undefined') { links.push(makeIconLink(pub.poster,'picture', 'poster')); }
    if (typeof(pub.code)    != 'undefined') { links.push(makeIconLink(pub.code, 'cog', 'code')); }
    if (typeof(pub.data)    != 'undefined') { links.push(makeIconLink(pub.data, 'folder-open', 'data')); }
    if (typeof(pub.bib)     != 'undefined') { links.push(makeIconLink(pub.bib,  'retweet', 'bib')); }
    if (typeof(pub.pdf)     != 'undefined') { links.push(makeIconLink(pub.pdf,  'file', 'pdf')); }

    if (links.length == 0) {
        return '';
    }

    var linkstr = links[0];
    for (i = 1; i < links.length; i++) {
        linkstr += '&nbsp;|&nbsp;' + links[i];
    }

    return linkstr;
}

function parsePub(pub) {

    var content = '<div>';
        content += '<div style="float: right; text-align: right;">';
            content += '<div>' + getDate(pub) + '</div>';
            var links = getLinks(pub);
            if (links != '') {
                content += '<div>' + links + '</div>';
            }
            var notes = getNotes(pub);
            if (notes != '') {
                content += '<div style="text-align: right">' + getNotes(pub) + '</div>';
            }
            content += '</div>';
        
        content += '<div style="font-size: 120%">' + getTitle(pub) + '</div>';
        content += '<div class="text-muted">' + getAuthors(pub) + '</div>';
        content += '<div class="text-muted">' + getVenue(pub) + '</div>';
    
    content += '</div>';

    return content;
}

function parsePubs(pubs) {

    var pubStrings = '<div class="publications">';

    for (var i = 0; i < pubs.length; i++) {
        pubStrings += '<div>' + parsePub(pubs[i]) + '</div>';
    }

    pubStrings += '</div>';
    return pubStrings;
}
