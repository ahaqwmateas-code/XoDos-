.class public Lcom/termux/app/terminal/SimpleLocationService;
.super Ljava/lang/Object;
.source "SimpleLocationService.java"

# interfaces
.implements Lcom/termux/floatball/LocationService;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 13
    iget-object v0, p0, Lcom/termux/app/terminal/SimpleLocationService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 14
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "floatball_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    const-string v1, "floatball_y"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    return-void
.end method

.method public onRestoreLocation()[I
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/termux/app/terminal/SimpleLocationService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "floatball_x"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/termux/app/terminal/SimpleLocationService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    const-string v3, "floatball_y"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 24
    .local v0, "location":[I
    return-object v0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const-string v0, "floatball_location"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/SimpleLocationService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method
