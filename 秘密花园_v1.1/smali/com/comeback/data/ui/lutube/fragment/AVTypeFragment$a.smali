.class public Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment$a;
.super Lm/j;
.source "AVTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/lutube/bean/VideoType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment$a;->e:Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;

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
    check-cast p1, Lcom/comeback/data/ui/lutube/bean/VideoType;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment$a;->e:Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->g:Lcom/comeback/data/ui/lutube/adapter/VideoTypeAdapter;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoType;->getResponse()Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
