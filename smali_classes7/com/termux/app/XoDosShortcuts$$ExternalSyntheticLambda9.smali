.class public final synthetic Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosShortcuts;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$0:Lcom/termux/app/XoDosShortcuts;

    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$0:Lcom/termux/app/XoDosShortcuts;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/app/XoDosShortcuts;->lambda$showAppSettings$2$com-termux-app-XoDosShortcuts(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
