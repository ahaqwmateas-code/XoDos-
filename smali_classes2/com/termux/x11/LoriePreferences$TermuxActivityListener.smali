.class public interface abstract Lcom/termux/x11/LoriePreferences$TermuxActivityListener;
.super Ljava/lang/Object;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TermuxActivityListener"
.end annotation


# virtual methods
.method public abstract changePreference(Ljava/lang/String;)V
.end method

.method public abstract collectProcessorInfo(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/termux/x11/controller/winhandler/ProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onChangeOrientation(I)V
.end method

.method public abstract onExitApp()V
.end method

.method public abstract onX11PreferenceSwitchChange(Z)V
.end method

.method public abstract openSoftwareKeyboard()V
.end method

.method public abstract reInstallX11StartScript(Landroid/app/Activity;)V
.end method

.method public abstract releaseSlider(Z)V
.end method

.method public abstract setFloatBallMenu(ZZ)V
.end method

.method public abstract showProcessManager()V
.end method

.method public abstract stopDesktop()V
.end method
