.class public Lcom/comeback/data/ui/km/UserListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km/UserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/km/bean/User;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/km/UserListAdapter;

.field public b:Lcom/comeback/data/ui/km/bean/User;

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/km/UserListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->a:Lcom/comeback/data/ui/km/UserListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km/bean/User;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/User;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/km/UserListAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/User;->getMu_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
