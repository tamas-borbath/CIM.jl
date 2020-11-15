println("Init Python deps")
import PyCall: pyimport

const PIP_PACKAGES = ["PyCIM","cimpy"]

sys = pyimport("sys")
subprocess = pyimport("subprocess")
subprocess.check_call([sys.executable, "-m", "pip", "install", "--user", "--upgrade", "--force-reinstall", PIP_PACKAGES...])
