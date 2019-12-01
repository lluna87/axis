from django.http import HttpResponseRedirect

def requires_login(f):
    def wrap(request, *args, **kwargs):
        #this check the session if userid key exist, if not it will redirect to login page
        if not request.user.is_authenticated():
            return HttpResponseRedirect('/login')
        return f(request, *args, **kwargs)
    wrap.__doc__=f.__doc__
    wrap.__name__=f.__name__
    return wrap