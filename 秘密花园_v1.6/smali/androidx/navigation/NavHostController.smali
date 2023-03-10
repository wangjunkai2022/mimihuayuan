.class public final Landroidx/navigation/NavHostController;
.super Landroidx/navigation/NavController;
.source "NavHostController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public enableOnBackPressed(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->enableOnBackPressed(Z)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0
    .param p1    # Landroidx/activity/OnBackPressedDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/ViewModelStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    return-void
.end method
