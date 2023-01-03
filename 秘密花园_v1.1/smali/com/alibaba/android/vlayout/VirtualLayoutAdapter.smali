.class public abstract Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VirtualLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/VirtualLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    return-void
.end method
