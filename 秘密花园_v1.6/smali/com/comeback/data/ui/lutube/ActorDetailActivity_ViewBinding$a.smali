.class public Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding$a;
.super Ld/c/b;
.source "ActorDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;Lcom/comeback/data/ui/lutube/ActorDetailActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v0}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v0, v1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    const-string v0, "0fbVjPz837vjg774"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->t()V

    return-void
.end method
