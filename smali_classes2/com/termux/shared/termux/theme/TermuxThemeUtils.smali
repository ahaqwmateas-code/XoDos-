.class public Lcom/termux/shared/termux/theme/TermuxThemeUtils;
.super Ljava/lang/Object;
.source "TermuxThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAppNightMode(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getNightMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/theme/NightMode;->setAppNightMode(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static setAppNightMode(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/termux/shared/theme/NightMode;->setAppNightMode(Ljava/lang/String;)V

    .line 23
    return-void
.end method
