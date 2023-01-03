.class public Lcom/comeback/data/ui/senlin/ZYBrowseActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ZYBrowseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/senlin/ZYBrowseActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00ae

    return v0
.end method

.method public e()V
    .locals 7

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v1, "RAcNCAIdZkcaFkc="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v0, v0, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v0, 0x7f0c00e2

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f09031c

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902d9

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902a4

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09029a

    .line 10
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09034a

    .line 11
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "0P3Gjerg3Yn1"

    .line 12
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v6, Lf/e/a/j/i0/d;

    invoke-direct {v6, p0, v1}, Lf/e/a/j/i0/d;-><init>(Lcom/comeback/data/ui/senlin/ZYBrowseActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0f7qg//G3I7CSdPZ9o/qzBiF2NiD+oMcmvmdgvHNive3hNLmjOm91OfO0u/Pj+zE09nGgffb0Yzqj7Prnvr/jIPAhPDeloSCkOa2bZ3xw4+P2IX8xJq+tJr9soDT84Txs4rW4I3JqdXBx9Hm4o/r7dDT2IvX/9+92465953OxI6Z1ITww5Wpr5TSloLy9YvoioT8wY36h9v0zNHQyYzg2ND+6IPx996nxoOJ1nKO2+bS8u+D8ffemOqBtt6d+e6OjfaK5PSWg5WX3rmC6OaM17uKzNOO157W3dDc4NKCwufR1+iMxOY="

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p1, "XxYXFBhJFhwSFl1JDAUOCFYLCQ1FEFZe"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "XxYXFBhJFhwHB1oAExAaRVQNDg=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string p1, "XxYXFBhJFhwSFl1JDAMCBVwNDQMKA1AdEAlZ"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string p1, "XxYXFBhJFhwAClUXEQgFRVQNDg=="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string p1, "XxYXFBhJFhwQDBoLAgMCG15MAAsG"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string p1, "XxYXFBhJFhwSFl1JGRoKB04YGkoIHFQc"

    .line 7
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string p1, "XxYXFBhJFhwYE1AOGQRSWxkBDAk="

    .line 8
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string p1, "XxYXFBhJFhwaDUEJAhMCG15MAAsG"

    .line 9
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string p1, "XxYXFBhJFhwQDBoGCAMCCU0bTQcEHg=="

    .line 10
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/senlin/SenLinActivity;->h:Ljava/lang/String;

    .line 11
    :goto_0
    invoke-static {p0}, Lcom/comeback/data/ui/senlin/SenLinActivity;->v(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901e1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
