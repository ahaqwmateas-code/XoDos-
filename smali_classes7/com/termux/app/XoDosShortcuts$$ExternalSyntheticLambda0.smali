.class public final synthetic Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosShortcuts;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/GridLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;Ljava/lang/String;Landroid/widget/GridLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/XoDosShortcuts;

    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$3:Landroid/widget/GridLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/XoDosShortcuts;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;->f$3:Landroid/widget/GridLayout;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/termux/app/XoDosShortcuts;->lambda$confirmDelete$24$com-termux-app-XoDosShortcuts(Ljava/io/File;Ljava/lang/String;Landroid/widget/GridLayout;Landroid/content/DialogInterface;I)V

    return-void
.end method
