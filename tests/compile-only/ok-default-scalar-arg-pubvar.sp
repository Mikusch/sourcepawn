public int g_MyHandle;
static int s_MyValue;
public float g_MyFloat;

native void NativeWithDefault(int x = g_MyHandle);

void GlobalDefault(int x = g_MyHandle) {}
void StaticDefault(int x = s_MyValue) {}
void FloatDefault(float x = g_MyFloat) {}
void MixedDefaults(int a, int b = g_MyHandle, int c = 10) {}

public main()
{
    GlobalDefault();
    StaticDefault();
    FloatDefault();
    MixedDefaults(1);
}
