.class public Lcom/comeback/data/ui/tv91/fragment/TypeFragment$b;
.super Lm/j;
.source "TypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/tv91/bean/Tags;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$b;->e:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tv91/bean/Tags;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$b;->e:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->h:Lcom/comeback/data/ui/tv91/bean/Tags;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->g:Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/Tags;->getMessage()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
