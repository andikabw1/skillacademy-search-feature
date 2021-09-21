** Settings **
Library         RequestsLibrary

** Variables **
${BASE_URL}     https://skillacademy.com/skillacademy/discovery/search

** Test Cases **
Get Request
    ${response} =  GET  ${BASE_URL}     expected_status=200

Get Request with Page Parameter
    ${response} =  GET  ${BASE_URL}     params=page=${1}    expected_status=200

Get Request with Page Size Parameter
    ${response} =  GET  ${BASE_URL}     params=pageSize=${5}    expected_status=200

Get Request with Search Query Parameter
    ${response} =  GET  ${BASE_URL}     params=searchQuery=Belajar    expected_status=200

Get Request with Min Price Parameter
    ${response} =  GET  ${BASE_URL}     params=minPrice=200000    expected_status=200

Get Request with Max Price Parameter
    ${response} =  GET  ${BASE_URL}     params=maxPrice=320000    expected_status=200

Get Request with Min-Max Price Parameter
    ${response} =  GET  ${BASE_URL}     params=minPrice=${200000}&maxPrice=${320000}   expected_status=200

Get Request with Max Duration Parameter
    ${response} =  GET  ${BASE_URL}     params=maxPrice=320000    expected_status=200

Get Request with Min Duration Parameter
    ${response} =  GET  ${BASE_URL}     params=minDuration=3600    expected_status=200

Get Request with Min-Max Duration Parameter
    ${response} =  GET  ${BASE_URL}     params=minDuration=3600&maxDuration=7200    expected_status=200

Get Request with Sort By Parameter (Expexted to be Failed)
    ${response} =  GET  ${BASE_URL}     params=sortBy=date    expected_status=500

Get Request with Order By Parameter
    ${response} =  GET  ${BASE_URL}     params=orderBy=date    expected_status=200
