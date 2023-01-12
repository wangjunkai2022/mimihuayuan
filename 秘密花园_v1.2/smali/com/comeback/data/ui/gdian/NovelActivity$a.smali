.class public Lcom/comeback/data/ui/gdian/NovelActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "NovelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gdian/NovelActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/gdian/bean/ChapterList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/gdian/NovelActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/NovelActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->g:Lcom/comeback/data/ui/gdian/NovelActivity;

    iput p2, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gdian/bean/ChapterList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->g:Lcom/comeback/data/ui/gdian/NovelActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/gdian/NovelActivity;->tvState:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0ufSi9f7"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/ChapterList;->getData()Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->getPages()Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;->getList_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "2N7qg8DT"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget v0, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->g:Lcom/comeback/data/ui/gdian/NovelActivity;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 6
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/NovelActivity$a;->g:Lcom/comeback/data/ui/gdian/NovelActivity;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/ChapterList;->getData()Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
