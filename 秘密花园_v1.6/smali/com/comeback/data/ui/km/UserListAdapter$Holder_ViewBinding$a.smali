.class public Lcom/comeback/data/ui/km/UserListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "UserListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km/UserListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/km/UserListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/km/UserListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/UserListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/km/UserListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/km/UserListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/km/UserListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km/UserListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/km/UserListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->a:Lcom/comeback/data/ui/km/UserListAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km/bean/User;->getMu_name()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/User;->getMu_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/km/UserCenterActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
