.class public Lcom/comeback/data/ui/km/UserCenterActivity_ViewBinding$a;
.super Ld/c/b;
.source "UserCenterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km/UserCenterActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/km/UserCenterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/km/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/UserCenterActivity_ViewBinding;Lcom/comeback/data/ui/km/UserCenterActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/km/UserCenterActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km/UserCenterActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km/UserCenterActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km/UserCenterActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/km/UserCenterActivity;->tvFollow:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/km/UserCenterActivity;->t(Landroid/widget/TextView;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/km/bean/User;

    invoke-direct {v0}, Lcom/comeback/data/ui/km/bean/User;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/comeback/data/ui/km/UserCenterActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/km/bean/User;->setMu_id(Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Lcom/comeback/data/ui/km/UserCenterActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/km/bean/User;->setMu_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v1

    invoke-static {v1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    const-string v0, "0ufQgtjb37vjg774"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/comeback/data/ui/km/UserCenterActivity;->tvFollow:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
