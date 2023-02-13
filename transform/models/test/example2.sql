WITH inp AS (SELECT docid, pubdate, 
    REPLACE(REGEXP_REPLACE(xmlbody, '(xmlns|xsi|xlink):?[[:alnum:]]*="[^"]+"', '', 'g'), 'n2016:', '')::xml AS xmldoc
FROM  {{ ref( 'example') }})
SELECT 
(xpath('/TED_EXPORT/TECHNICAL_SECTION/COMMENTS/text()', xmldoc))[1]
FROM inp
