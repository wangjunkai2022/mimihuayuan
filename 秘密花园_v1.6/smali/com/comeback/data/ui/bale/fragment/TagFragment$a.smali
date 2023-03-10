.class public Lcom/comeback/data/ui/bale/fragment/TagFragment$a;
.super Lm/j;
.source "TagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/fragment/TagFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/bale/bean/Tags;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/bale/fragment/TagFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/fragment/TagFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment$a;->e:Lcom/comeback/data/ui/bale/fragment/TagFragment;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/Tags;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment$a;->e:Lcom/comeback/data/ui/bale/fragment/TagFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/bale/fragment/TagFragment;->h(Lcom/comeback/data/ui/bale/fragment/TagFragment;Lcom/comeback/data/ui/bale/bean/Tags;)V

    return-void
.end method
