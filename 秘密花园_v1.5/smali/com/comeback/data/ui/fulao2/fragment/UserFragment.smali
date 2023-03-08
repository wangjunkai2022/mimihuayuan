.class public Lcom/comeback/data/ui/fulao2/fragment/UserFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "UserFragment.java"


# instance fields
.field public g:Ljava/lang/String;

.field public radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c010f

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;-><init>(Lcom/comeback/data/ui/fulao2/fragment/UserFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    const-class v0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v0, "XxYXFBhJFhwDEkJKDxlNGFQbAgkGXVpd"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "XxYXFBhJFhwDEkJKGRlNAFobFgofElAdEAg="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "XxYXFBhJFhwDEkJKGRlNE04BVFNcXVpd"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;-><init>(Lcom/comeback/data/ui/fulao2/fragment/UserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
