.class Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;
.super Ljava/lang/Thread;
.source "TermuxCrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/termux/crash/TermuxCrashUtils;->notifyAppCrashFromCrashLogFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logTagParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;->val$logTagParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;->val$logTagParam:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    return-void
.end method
