import requests, json;
class httpClientHelper(object):
    """post请求"""
    
    def httpPostMethod(url,par):
        github_url =url
        data = json.dumps(par)
        r = requests.post(github_url, data)
        return r.json

