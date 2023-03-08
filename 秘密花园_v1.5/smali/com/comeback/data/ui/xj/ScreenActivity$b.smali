.class public Lcom/comeback/data/ui/xj/ScreenActivity$b;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "ScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/ScreenActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/xj/bean/ScreenVideo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/xj/ScreenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/ScreenActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->g:Lcom/comeback/data/ui/xj/ScreenActivity;

    iput p2, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->g:Lcom/comeback/data/ui/xj/ScreenActivity;

    .line 4
    iget-boolean v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->e:Z

    if-nez v2, :cond_f

    .line 5
    iput-boolean v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->e:Z

    .line 6
    new-instance v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;

    invoke-direct {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;-><init>()V

    const-string v3, "0ufLjejb3oLIg6rs"

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->setCatename(Ljava/lang/String;)V

    const-string v3, "Bw=="

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->setCateid(Ljava/lang/String;)V

    .line 9
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->getCatename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 12
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 13
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;

    .line 15
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->getCatename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 17
    iget-object v6, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 18
    invoke-virtual {v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->getCateid()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_0

    .line 20
    :cond_1
    new-instance v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;

    invoke-direct {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;-><init>()V

    const-string v4, "0ufLjejb3K/Dg7jd"

    .line 21
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->setAreaname(Ljava/lang/String;)V

    .line 22
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->setAreaid(Ljava/lang/String;)V

    .line 23
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->getAreaname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 26
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 27
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 28
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getAreas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;

    .line 29
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->getAreaname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 31
    iget-object v6, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 32
    invoke-virtual {v4}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->getAreaid()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_1

    .line 34
    :cond_3
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;-><init>()V

    const-string v2, "0ufLjejb3IrHgo/a"

    .line 35
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->setYearname(Ljava/lang/String;)V

    .line 36
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->setYearid(Ljava/lang/String;)V

    .line 37
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->getYearname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 40
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 41
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 42
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getYears()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;

    .line 43
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->getYearname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 45
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 46
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->getYearid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_2

    .line 48
    :cond_5
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;-><init>()V

    const-string v2, "0ufLjejb34v2gK3XndDF"

    .line 49
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->setValue(Ljava/lang/String;)V

    .line 50
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->setKeyid(Ljava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 54
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 55
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 56
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getDefinitions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;

    .line 57
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 58
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 59
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 60
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->getKeyid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_3

    .line 62
    :cond_7
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;-><init>()V

    const-string v2, "0ufLjejb0ZT3gJTb"

    .line 63
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->setKeyid(Ljava/lang/String;)V

    .line 65
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 68
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 69
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 70
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getDurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;

    .line 71
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 73
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 74
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->getKeyid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 75
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_4

    .line 76
    :cond_9
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;-><init>()V

    const-string v2, "0ufLjejb"

    .line 77
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->setKeyid(Ljava/lang/String;)V

    .line 79
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 82
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 83
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 84
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getMosaics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;

    .line 85
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 86
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 87
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 88
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->getKeyid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 89
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_5

    .line 90
    :cond_b
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;-><init>()V

    const-string v2, "0ufLjejb0Zzejpzn"

    .line 91
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->setValue(Ljava/lang/String;)V

    .line 92
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->setKeyid(Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 95
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 96
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 97
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 98
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getLangvoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;

    .line 99
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 101
    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 102
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->getKeyid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 103
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_6

    .line 104
    :cond_d
    new-instance v1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;-><init>()V

    const-string v2, "0ufLjejb373hg47o"

    .line 105
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->setValue(Ljava/lang/String;)V

    .line 106
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->setKeyid(Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 109
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 110
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 111
    iget-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 112
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getOrders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;

    .line 113
    iget-object v3, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 115
    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 116
    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->getKeyid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 117
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_7

    .line 118
    :cond_f
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->g:Lcom/comeback/data/ui/xj/ScreenActivity;

    .line 119
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 120
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 121
    :cond_10
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$b;->g:Lcom/comeback/data/ui/xj/ScreenActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/xj/ScreenActivity;->s(Lcom/comeback/data/ui/xj/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->getVodrows()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
