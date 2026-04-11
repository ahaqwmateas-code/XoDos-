.class public final synthetic Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosShortcuts;

.field public final synthetic f$1:Landroid/widget/GridLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;->f$0:Lcom/termux/app/XoDosShortcuts;

    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;->f$1:Landroid/widget/GridLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;->f$0:Lcom/termux/app/XoDosShortcuts;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;->f$1:Landroid/widget/GridLayout;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/XoDosShortcuts;->lambda$showShortcutGrid$0$com-termux-app-XoDosShortcuts(Landroid/widget/GridLayout;Landroid/content/DialogInterface;I)V

    return-void
.end method
