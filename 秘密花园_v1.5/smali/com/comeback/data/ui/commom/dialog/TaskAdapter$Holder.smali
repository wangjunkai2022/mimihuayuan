.class public Lcom/comeback/data/ui/commom/dialog/TaskAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "TaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/commom/dialog/TaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/main/bean/InstallTask;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/commom/dialog/TaskAdapter;

.field public b:Lcom/comeback/data/ui/main/bean/InstallTask;

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/commom/dialog/TaskAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/commom/dialog/TaskAdapter$Holder;->a:Lcom/comeback/data/ui/commom/dialog/TaskAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/main/bean/InstallTask;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/commom/dialog/TaskAdapter$Holder;->b:Lcom/comeback/data/ui/main/bean/InstallTask;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/commom/dialog/TaskAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/InstallTask;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
