.class public Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/adapter/HomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cm/adapter/HomeAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x3a

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x41

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x3b

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x21

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x1e

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x39

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x1c

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cm/ScreenActivity;->t(Landroid/content/Context;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f09028e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
