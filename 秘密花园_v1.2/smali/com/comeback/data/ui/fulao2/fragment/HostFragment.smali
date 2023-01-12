.class public Lcom/comeback/data/ui/fulao2/fragment/HostFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "HostFragment.java"


# static fields
.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;


# instance fields
.field public g:Lcom/comeback/data/ui/fulao2/bean/Host;

.field public tvHost:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvImage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStream:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UQ5ROwgcV1UaAQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->h:Ljava/lang/String;

    const-string v0, "UQ5ROwgcV1UaAWsOFQsEDg=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->i:Ljava/lang/String;

    const-string v0, "UQ5ROwgcV1UaAWsUDBgGClpQ"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->j:Ljava/lang/String;

    const-string v0, "UQ5ROwgcV1UaAWsPFxkX"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c010c

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "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"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    const-class v2, Lcom/comeback/data/ui/fulao2/bean/Host;

    invoke-virtual {v1, v0, v2}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/fulao2/bean/Host;

    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->tvHost:Landroid/widget/TextView;

    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    sget-object v2, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->k:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lf/e/a/k/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->tvImage:Landroid/widget/TextView;

    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    sget-object v2, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->i:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lf/e/a/k/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->tvStream:Landroid/widget/TextView;

    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    sget-object v2, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->j:Ljava/lang/String;

    sget-object v3, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lf/e/a/k/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getStreamString()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lf/e/a/j/l/g/c;

    invoke-direct {v2, p0}, Lf/e/a/j/l/g/c;-><init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V

    invoke-virtual {p1, v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 4
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/l/h/b;->b()Lm/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/l/h/b;->m()Lm/e;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/l/h/b;->k()Lm/e;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v0, Lf/e/a/j/l/g/d;

    invoke-direct {v0, p0}, Lf/e/a/j/l/g/d;-><init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_1

    .line 9
    :sswitch_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getImageString()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lf/e/a/j/l/g/b;

    invoke-direct {v2, p0}, Lf/e/a/j/l/g/b;-><init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V

    invoke-virtual {p1, v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 11
    :sswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getApiString()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lf/e/a/j/l/g/a;

    invoke-direct {v2, p0}, Lf/e/a/j/l/g/a;-><init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V

    invoke-virtual {p1, v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902c8 -> :sswitch_3
        0x7f0902cc -> :sswitch_2
        0x7f090304 -> :sswitch_1
        0x7f09031e -> :sswitch_0
    .end sparse-switch
.end method
