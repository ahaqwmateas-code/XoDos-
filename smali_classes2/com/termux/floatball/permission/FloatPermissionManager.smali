.class public Lcom/termux/floatball/permission/FloatPermissionManager;
.super Ljava/lang/Object;
.source "FloatPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatPermissionManager"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private isWindowDismiss:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->isWindowDismiss:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->windowManager:Landroid/view/WindowManager;

    .line 42
    iput-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private ROM360PermissionApply(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager$1;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 131
    return-void
.end method

.method private commonROMPermissionApply(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->meizuROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 180
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 181
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager$5;

    invoke-direct {v0, p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager$5;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 203
    :cond_1
    :goto_0
    return-void
.end method

.method private commonROMPermissionCheck(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->meizuPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 92
    .local v1, "result":Ljava/lang/Boolean;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 94
    :try_start_0
    const-class v2, Landroid/provider/Settings;

    .line 95
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "canDrawOverlays"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    .local v3, "canDrawOverlays":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 99
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "canDrawOverlays":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FloatPermissionManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # F

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 271
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private huaweiPermissionCheck(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/termux/floatball/permission/rom/HuaweiUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private huaweiROMPermissionApply(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager$2;

    invoke-direct {v0, p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager$2;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 144
    return-void
.end method

.method static synthetic lambda$showConfirmDialog$0(Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "result"    # Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 218
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;->confirmResult(Z)V

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    return-void
.end method

.method static synthetic lambda$showConfirmDialog$1(Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "result"    # Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 222
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;->confirmResult(Z)V

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    return-void
.end method

.method private meizuPermissionCheck(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/termux/floatball/permission/rom/MeizuUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private meizuROMPermissionApply(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 147
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager$3;

    invoke-direct {v0, p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager$3;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 157
    return-void
.end method

.method private miuiPermissionCheck(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/termux/floatball/permission/rom/MiuiUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private miuiROMPermissionApply(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager$4;

    invoke-direct {v0, p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager$4;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 170
    return-void
.end method

.method private qikuPermissionCheck(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lcom/termux/floatball/permission/rom/QikuUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private showConfirmDialog(Landroid/content/Context;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;

    .line 206
    sget v0, Lcom/termux/floatball/R$string;->no_display_over_app_permission:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/termux/floatball/permission/FloatPermissionManager;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    .line 207
    return-void
.end method

.method private showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;

    .line 210
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/termux/floatball/R$string;->open_permission:I

    .line 216
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/termux/floatball/permission/FloatPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/termux/floatball/permission/FloatPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/termux/floatball/R$string;->not_open_permission:I

    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/termux/floatball/permission/FloatPermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/termux/floatball/permission/FloatPermissionManager$$ExternalSyntheticLambda1;-><init>(Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->dialog:Landroid/app/Dialog;

    .line 225
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 226
    return-void
.end method

.method private showWindow(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 233
    iget-boolean v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->isWindowDismiss:Z

    if-nez v0, :cond_0

    .line 234
    const-string v0, "FloatPermissionManager"

    const-string v1, "view is already added here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->isWindowDismiss:Z

    .line 239
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->windowManager:Landroid/view/WindowManager;

    .line 243
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 244
    .local v0, "size":Landroid/graphics/Point;
    nop

    .line 245
    iget-object v1, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 247
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 248
    .local v1, "screenWidth":I
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 250
    .local v2, "screenHeight":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 251
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 253
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 254
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x10128

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7da

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 258
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 259
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 260
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {p0, p1, v4}, Lcom/termux/floatball/permission/FloatPermissionManager;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 261
    iget-object v3, p0, Lcom/termux/floatball/permission/FloatPermissionManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x432b0000    # 171.0f

    invoke-direct {p0, p1, v4}, Lcom/termux/floatball/permission/FloatPermissionManager;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 266
    return-void
.end method


# virtual methods
.method public applyOrShowFloatWindow(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->showWindow(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->applyPermission(Landroid/content/Context;)V

    .line 52
    :goto_0
    return-void
.end method

.method public applyPermission(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 107
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->miuiROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->meizuROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->huaweiROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->ROM360PermissionApply(Landroid/content/Context;)V

    .line 117
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->commonROMPermissionApply(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public checkPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 57
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->miuiPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->meizuPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 61
    :cond_1
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->huaweiPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 63
    :cond_2
    invoke-static {}, Lcom/termux/floatball/permission/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->qikuPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 67
    :cond_3
    invoke-direct {p0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->commonROMPermissionCheck(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
