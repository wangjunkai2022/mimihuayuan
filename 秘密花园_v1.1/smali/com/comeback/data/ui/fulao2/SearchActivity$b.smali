.class public Lcom/comeback/data/ui/fulao2/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/SearchActivity$b;->e:Lcom/comeback/data/ui/fulao2/SearchActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/SearchActivity$b;->e:Lcom/comeback/data/ui/fulao2/SearchActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/fulao2/SearchActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/fulao2/SearchActivity;->l(Lcom/comeback/data/ui/fulao2/SearchActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/comeback/data/ui/fulao2/bean/VideoList;)V

    return-void
.end method
