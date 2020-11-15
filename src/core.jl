import PyCall

function new_session()
    global g_Session = PyCall.pyimport("PyCIM")
end


function get_session()
    if @isdefined g_Session
        return g_Session
    else 
        return new_session()
    end
end


function import_file(p_path::String)
    l_sess = get_session()
    return l_sess.cimread(p_path)
end