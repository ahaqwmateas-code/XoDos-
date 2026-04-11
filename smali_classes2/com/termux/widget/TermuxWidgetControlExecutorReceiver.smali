.class public Lcom/termux/widget/TermuxWidgetControlExecutorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TermuxWidgetControlExecutorReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxWidgetControlExecutorReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 14
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/termux/widget/TermuxWidgetApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 16
    const-string v0, "TermuxWidgetControlExecutorReceiver"

    invoke-static {p1, p2, v0}, Lcom/termux/widget/TermuxWidgetProvider;->handleTermuxShortcutExecutionIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 17
    return-void
.end method
