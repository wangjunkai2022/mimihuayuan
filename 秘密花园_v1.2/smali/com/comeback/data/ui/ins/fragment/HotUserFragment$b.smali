.class public Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HotUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/ins/bean/HotUser;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;->f:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/HotUser;

    .line 2
    new-instance v0, Lf/a/a/a/l/i;

    invoke-direct {v0}, Lf/a/a/a/l/i;-><init>()V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/ins/adapter/HotVAdapter;

    iget-object v2, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;->f:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/HotUser;->getData()Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;->getResultList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/comeback/data/ui/ins/adapter/HotVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;->f:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->q(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
