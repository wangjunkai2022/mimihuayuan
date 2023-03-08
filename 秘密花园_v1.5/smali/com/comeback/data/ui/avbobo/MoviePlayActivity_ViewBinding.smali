.class public Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MoviePlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlETGQMPTA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvDetail:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkESAl0ILBMTDgZF"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c2

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType1:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0ILBMTDgVF"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c3

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType2:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0ILBMTDgRF"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType3:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0ILBMTDgNF"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType4:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkc2GhQOVA=="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupType:Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THkESAl0INAMNDgZF"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0INAMNDgVF"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcuCgoOVA=="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupLine:Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THl8fKl0JHU0="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090130

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->llLine:Landroid/widget/LinearLayout;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902da

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->c:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->tvDetail:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType1:Landroid/widget/RadioButton;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType2:Landroid/widget/RadioButton;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType3:Landroid/widget/RadioButton;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioType4:Landroid/widget/RadioButton;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupType:Landroid/widget/RadioGroup;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->radioGroupLine:Landroid/widget/RadioGroup;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->llLine:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
