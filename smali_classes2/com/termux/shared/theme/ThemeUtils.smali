.class public Lcom/termux/shared/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field public static final ATTR_TEXT_COLOR:I = 0x1010098

.field public static final ATTR_TEXT_COLOR_LINK:I = 0x101009b

.field public static final ATTR_TEXT_COLOR_PRIMARY:I = 0x1010036

.field public static final ATTR_TEXT_COLOR_SECONDARY:I = 0x1010038


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemAttrColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getSystemAttrColor(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "def"    # I

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 82
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return v1
.end method

.method public static getTextColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    const v0, 0x1010098

    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorLink(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    const v0, 0x101009b

    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorPrimary(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorSecondary(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isNightModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static shouldEnableDarkTheme(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/termux/shared/theme/NightMode;->TRUE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    sget-object v0, Lcom/termux/shared/theme/NightMode;->FALSE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    return v1

    .line 34
    :cond_1
    sget-object v0, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-static {p0}, Lcom/termux/shared/theme/ThemeUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 37
    :cond_2
    return v1
.end method
