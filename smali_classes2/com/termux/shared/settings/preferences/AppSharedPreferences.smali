.class public Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.super Ljava/lang/Object;
.source "AppSharedPreferences.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

.field protected final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p3, "multiProcessSharedPreferences"    # Landroid/content/SharedPreferences;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    iput-object p3, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMultiProcessSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
