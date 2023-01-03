.class public Lcom/comeback/data/ui/avbobo/MoviePlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "MoviePlayActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public llLine:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupLine:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupType:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioType1:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioType2:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioType3:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioType4:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    const-string v0, "BlM="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->f:Ljava/lang/String;

    .line 3
    new-instance v0, Lf/e/a/j/b/b;

    invoke-direct {v0, p0}, Lf/e/a/j/b/b;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static q(Landroid/content/Context;Lcom/comeback/data/ui/avbobo/bean/MovieDetail;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    const-string v0, "XgY="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;->e()V

    const/high16 v0, -0x1000000

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->e:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/b/g/a;->b(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lf/e/a/j/b/e;

    invoke-direct {v1, p0}, Lf/e/a/j/b/e;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/b/g/a;->d(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 11
    new-instance v1, Lf/e/a/j/b/d;

    invoke-direct {v1, p0}, Lf/e/a/j/b/d;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->o()V

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    if-gez v0, :cond_0

    const-string v0, "0fjhgvzT36HegKDZntDz"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getLine_version()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v3}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0, v4}, Lf/e/a/j/b/g/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/comeback/data/ui/avbobo/MoviePlayActivity$a;

    invoke-direct {v2, p0, v0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity$a;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType1:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v4}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType2:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v4}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType3:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v5}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType4:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v1}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupLine:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupType:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v1}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0fXVjf7M1o/p"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v4}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getDuration()I

    move-result v4

    invoke-static {v4}, Lc/a/a/b/g/h;->f1(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "F0KF9saVrY2a4buIxPA="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v4}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getPlayCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 22
    iput v2, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->n()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "UwMXBQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->e()V

    return-void
.end method

.method public synthetic p(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->g:I

    goto :goto_0

    :pswitch_4
    const-string p1, "BlM="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string p1, "Bg=="

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->f:Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->n()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901b2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0901be
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
