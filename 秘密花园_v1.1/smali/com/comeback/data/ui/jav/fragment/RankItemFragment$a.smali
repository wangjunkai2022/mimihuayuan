.class public Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;
.super Ljava/lang/Object;
.source "RankItemFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->i:Ljava/lang/String;

    const-string v0, "QQsHAQQ="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VgEXCxk="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, p1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    const-string p2, "VgEXCxksWlYdFVsVHQ4="

    .line 8
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    const-string p2, "VgEXCxksVFwdElwLAQ=="

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-object p2, p1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    goto :goto_0

    .line 11
    :pswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 12
    iput-boolean p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    const-string p1, "Wg0NEAMfQA=="

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    goto :goto_0

    .line 15
    :pswitch_2
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 16
    iput-boolean p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    const-string p1, "QAcGDwcK"

    .line 17
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    goto :goto_0

    .line 19
    :pswitch_3
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 20
    iput-boolean p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    const-string p1, "UwMKCBI="

    .line 21
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    .line 23
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->n(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901c2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
