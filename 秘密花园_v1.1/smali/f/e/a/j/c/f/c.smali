.class public Lf/e/a/j/c/f/c;
.super Lm/j;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ba/bean/ComicListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c/f/c;->f:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    iput-object p2, p0, Lf/e/a/j/c/f/c;->e:Ljava/lang/String;

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
    check-cast p1, Lcom/comeback/data/ui/ba/bean/ComicListBean;

    .line 2
    iget-object v0, p0, Lf/e/a/j/c/f/c;->f:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->g:Ljava/util/HashMap;

    .line 4
    iget-object v1, p0, Lf/e/a/j/c/f/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lf/e/a/j/c/f/c;->f:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    iget-object v0, p0, Lf/e/a/j/c/f/c;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->j(Ljava/lang/String;)V

    return-void
.end method
