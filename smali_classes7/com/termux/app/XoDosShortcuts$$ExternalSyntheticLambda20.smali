.class public final synthetic Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosShortcuts;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$0:Lcom/termux/app/XoDosShortcuts;

    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$2:Ljava/io/File;

    iput-boolean p4, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$0:Lcom/termux/app/XoDosShortcuts;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$2:Ljava/io/File;

    iget-boolean v3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/app/XoDosShortcuts;->lambda$generateIcon$22$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method
