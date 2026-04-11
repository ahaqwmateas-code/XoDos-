.class public Lcom/termux/shared/activity/media/AppCompatActivityUtils;
.super Ljava/lang/Object;
.source "AppCompatActivityUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatActivityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Z

    .line 27
    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/termux/shared/theme/NightMode;->modeOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    .line 29
    .local v0, "nightMode":Lcom/termux/shared/theme/NightMode;
    if-eqz v0, :cond_2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getMode()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public static setShowBackButtonInActionBar(Landroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 2
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "showBackButtonInActionBar"    # Z

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 118
    :cond_1
    :goto_0
    return-void
.end method

.method public static setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 1
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "id"    # I

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 48
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static setToolbarSubtitle(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;I)V
    .locals 4
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "id"    # I
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "subtitleAppearance"    # I

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 89
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 92
    if-eqz p3, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {v0, p0, p3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set toolbar subtitle appearance to style resource id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppCompatActivityUtils"

    invoke-static {v3, v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 98
    :cond_1
    :goto_1
    return-void
.end method

.method public static setToolbarTitle(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;I)V
    .locals 5
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "titleAppearance"    # I

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 62
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 65
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {v0, p0, p3}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set toolbar title appearance to style resource id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppCompatActivityUtils"

    invoke-static {v4, v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 77
    .end local v1    # "actionBar":Landroidx/appcompat/app/ActionBar;
    :cond_2
    :goto_1
    return-void
.end method
