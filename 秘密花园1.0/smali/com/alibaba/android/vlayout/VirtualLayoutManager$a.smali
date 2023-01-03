.class public Lcom/alibaba/android/vlayout/VirtualLayoutManager$a;
.super Ljava/lang/Object;
.source "VirtualLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$a;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$a;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 2
    iget-object v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method
