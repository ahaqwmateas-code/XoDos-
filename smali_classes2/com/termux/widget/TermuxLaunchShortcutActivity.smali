.class public Lcom/termux/widget/TermuxLaunchShortcutActivity;
.super Landroid/app/Activity;
.source "TermuxLaunchShortcutActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxLaunchShortcutActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 2

    .line 15
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 18
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/widget/TermuxWidgetApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 20
    invoke-virtual {p0}, Lcom/termux/widget/TermuxLaunchShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TermuxLaunchShortcutActivity"

    invoke-static {p0, v0, v1}, Lcom/termux/widget/TermuxWidgetProvider;->handleTermuxShortcutExecutionIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/termux/widget/TermuxLaunchShortcutActivity;->finish()V

    .line 22
    return-void
.end method
