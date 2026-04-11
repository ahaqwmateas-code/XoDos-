.class Lcom/termux/x11/Prefs$1;
.super Ljava/util/HashMap;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/Prefs;


# direct methods
.method constructor <init>(Lcom/termux/x11/Prefs;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/Prefs;

    .line 55
    iput-object p1, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "displayResolutionMode"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayScale:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "displayScale"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayResolutionExact:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "displayResolutionExact"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayResolutionCustom:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "displayResolutionCustom"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "adjustResolution"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayStretch:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "displayStretch"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "Reseed"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "fullscreen"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->forceOrientation:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "forceOrientation"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "hideCutout"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->keepScreenOn:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "keepScreenOn"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "touchMode"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->scaleTouchpad:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "scaleTouchpad"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showStylusClickOverride"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->stylusIsMouse:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "stylusIsMouse"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->stylusButtonContactModifierMode:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "stylusButtonContactModifierMode"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showMouseHelper"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "pointerCapture"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->transformCapturedPointer:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "transformCapturedPointer"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->capturedPointerSpeedFactor:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "capturedPointerSpeedFactor"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->tapToMove:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "tapToMove"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touch_sensitivity:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "touch_sensitivity"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showAdditionalKbd"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "additionalKbdVisible"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showIMEWhileExternalConnected:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showIMEWhileExternalConnected"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->preferScancodes:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "preferScancodes"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->hardwareKbdScancodesWorkaround:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "hardwareKbdScancodesWorkaround"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "dexMetaKeyCapture"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enableAccessibilityServiceAutomatically"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->pauseKeyInterceptingWithEsc:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "pauseKeyInterceptingWithEsc"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->filterOutWinkey:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "filterOutWinkey"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enforceCharBasedInput:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enforceCharBasedInput"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->clipboardEnable:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "clipboardEnable"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->storeSecondaryDisplayPreferencesSeparately:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "storeSecondaryDisplayPreferencesSeparately"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enableFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enableFloatBallMenu"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enableGlobalFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enableGlobalFloatBallMenu"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->adjustHeightForEK:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "adjustHeightForEK"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->useTermuxEKBarBehaviour:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "useTermuxEKBarBehaviour"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "opacityEKBar"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->swipeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "swipeUpAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->swipeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "swipeDownAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->volumeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "volumeUpAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->volumeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "volumeDownAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->notificationTapAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "notificationTapAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->notificationButton0Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "notificationButton0Action"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->notificationButton1Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "notificationButton1Action"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->mediaKeysAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "mediaKeysAction"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/termux/x11/Prefs$1;->this$0:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "extra_keys_config"

    invoke-virtual {p0, v1, v0}, Lcom/termux/x11/Prefs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
