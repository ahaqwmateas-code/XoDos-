.class public final synthetic Landroidx/window/WindowInfoRepo$-CC;
.super Ljava/lang/Object;
.source "WindowInfoRepo.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    return-void
.end method

.method public static create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/WindowInfoRepo$Companion;->create(Landroid/app/Activity;)Landroidx/window/WindowInfoRepo;

    move-result-object v0

    return-object v0
.end method

.method public static overrideDecorator(Landroidx/window/WindowInfoRepoDecorator;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/WindowInfoRepo$Companion;->overrideDecorator(Landroidx/window/WindowInfoRepoDecorator;)V

    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/WindowInfoRepo;->Companion:Landroidx/window/WindowInfoRepo$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowInfoRepo$Companion;->reset()V

    return-void
.end method
