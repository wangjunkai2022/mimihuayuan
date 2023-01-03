.class public Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "MimeiLauncherActivity.java"


# instance fields
.field public b:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public c:Li/b0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public flProgress:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupImage:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioHost1:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$a;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->b:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic l(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->o(I)V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;Lcom/comeback/data/ui/mimei/bean/HostBean;)V
    .locals 8

    if-eqz p0, :cond_3

    const-string v0, "GBETAQ4XF1sHC1g="

    const-string v1, "VA4MFw4="

    const-string v2, "dA0NCg4QTVocCA=="

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getApi()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getApi()Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;

    .line 4
    new-instance v5, Li/e0$a;

    invoke-direct {v5}, Li/e0$a;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v4}, Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->c:Li/b0;

    invoke-virtual {v5, v4}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lf/e/a/j/e0/h;

    invoke-direct {v5, p0}, Lf/e/a/j/e0/h;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V

    check-cast v4, Li/d0;

    invoke-virtual {v4, v5}, Li/d0;->W(Li/g;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getComic()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getComic()Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;

    .line 12
    new-instance v6, Li/e0$a;

    invoke-direct {v6}, Li/e0$a;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v5}, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GBETAQ4XF1sHC1hYAEcODkMKDABWEFZeGgU="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v6, v5}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v5

    .line 14
    iget-object v6, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->c:Li/b0;

    invoke-virtual {v6, v5}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v6, Lf/e/a/j/e0/g;

    invoke-direct {v6, p0, v3}, Lf/e/a/j/e0/g;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;Ljava/util/List;)V

    check-cast v5, Li/d0;

    invoke-virtual {v5, v6}, Li/d0;->W(Li/g;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getFiction()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HostBean;->getFiction()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;

    .line 20
    new-instance v4, Li/e0$a;

    invoke-direct {v4}, Li/e0$a;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->c:Li/b0;

    invoke-virtual {v4, v3}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v4, Lf/e/a/j/e0/i;

    invoke-direct {v4, p0}, Lf/e/a/j/e0/i;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V

    check-cast v3, Li/d0;

    invoke-virtual {v3, v4}, Li/d0;->W(Li/g;)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->p()V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0092

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->b:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupImage:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->b:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->b:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 5
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 8
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 10
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->c:Li/b0;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->o(I)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    const-string v0, "aD08Ow=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 2
    sget-object v1, Lf/e/a/k/b;->B:[Ljava/lang/String;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "3+zUgeTl3JfCjoDC"

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    aget-object v0, v1, p1

    .line 5
    new-instance v1, Li/e0$a;

    invoke-direct {v1}, Li/e0$a;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 7
    invoke-virtual {v1}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->c:Li/b0;

    invoke-virtual {v1, v0}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;I)V

    check-cast v0, Li/d0;

    invoke-virtual {v0, v1}, Li/d0;->W(Li/g;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 4
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->e:Z

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 4
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "dQcCFg4BGVYKLAUESjwaMwUOCC0BHEN+NzcFKCwNVyVdJxAtBgtRUEA0RwVKDhMJXitVKT8qQ303DQEqEjtWJG9STVRSFwlQQl8GXksMAlkDWgcHXRUBVUMHBQYaDlAOD1YBSg1EWwtAAlECTVNRDgZXUwVbRVwGEVQCUkAOBlxTB1dSW0ZdVUcAV19ODwBeDlBbBVNFXFFBVQEG"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/e0/j/d;->a:Ljava/lang/String;

    .line 7
    sget-object v0, Lf/e/a/k/b;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lf/e/a/k/b;->A:Ljava/lang/String;

    sput-object v0, Lf/e/a/j/e0/j/d;->a:Ljava/lang/String;

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/comeback/data/ui/mimei/MimeiActivity;->l(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
