.class public Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;
.super Ljava/lang/Object;
.source "IdDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/IdDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;
    }
.end annotation


# instance fields
.field public anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;",
            ">;"
        }
    .end annotation
.end field

.field public columnist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;"
        }
    .end annotation
.end field

.field public comment_status:I

.field public content:Ljava/lang/String;

.field public date_number:I

.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field public favorites:I

.field public film_id:Ljava/lang/String;

.field public is_favorites:I

.field public is_like:I

.field public is_unlike:I

.field public library_id:I

.field public like_num_hand:I

.field public like_num_self:I

.field public like_num_total:I

.field public like_sgin:I

.field public ltype:Ljava/lang/String;

.field public play_time_num_hand:I

.field public play_time_num_self:I

.field public play_time_num_total:I

.field public play_time_sgin:I

.field public share_content:Ljava/lang/String;

.field public share_num_hand:I

.field public share_num_self:I

.field public share_sgin:I

.field public show_time:Ljava/lang/String;

.field public status:I

.field public subtitle:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/fruitPie/bean/IdDetail;

.field public title:Ljava/lang/String;

.field public unlikes:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/IdDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->this$0:Lcom/comeback/data/ui/fruitPie/bean/IdDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->anchors:Ljava/util/List;

    return-object v0
.end method

.method public getColumnist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->columnist:Ljava/util/List;

    return-object v0
.end method

.method public getComment_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->comment_status:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->date_number:I

    return v0
.end method

.method public getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->detail:Ljava/util/List;

    return-object v0
.end method

.method public getFavorites()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->favorites:I

    return v0
.end method

.method public getFilm_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->film_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_favorites()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_favorites:I

    return v0
.end method

.method public getIs_like()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_like:I

    return v0
.end method

.method public getIs_unlike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_unlike:I

    return v0
.end method

.method public getLibrary_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->library_id:I

    return v0
.end method

.method public getLike_num_hand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_hand:I

    return v0
.end method

.method public getLike_num_self()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_self:I

    return v0
.end method

.method public getLike_num_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_total:I

    return v0
.end method

.method public getLike_sgin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_sgin:I

    return v0
.end method

.method public getLtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->ltype:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time_num_hand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_hand:I

    return v0
.end method

.method public getPlay_time_num_self()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_self:I

    return v0
.end method

.method public getPlay_time_num_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_total:I

    return v0
.end method

.method public getPlay_time_sgin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_sgin:I

    return v0
.end method

.method public getShare_content()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_content:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_num_hand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_num_hand:I

    return v0
.end method

.method public getShare_num_self()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_num_self:I

    return v0
.end method

.method public getShare_sgin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_sgin:I

    return v0
.end method

.method public getShow_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->show_time:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->status:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->unlikes:I

    return v0
.end method

.method public setAnchors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->anchors:Ljava/util/List;

    return-void
.end method

.method public setColumnist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->columnist:Ljava/util/List;

    return-void
.end method

.method public setComment_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->comment_status:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setDate_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->date_number:I

    return-void
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->detail:Ljava/util/List;

    return-void
.end method

.method public setFavorites(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->favorites:I

    return-void
.end method

.method public setFilm_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->film_id:Ljava/lang/String;

    return-void
.end method

.method public setIs_favorites(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_favorites:I

    return-void
.end method

.method public setIs_like(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_like:I

    return-void
.end method

.method public setIs_unlike(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->is_unlike:I

    return-void
.end method

.method public setLibrary_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->library_id:I

    return-void
.end method

.method public setLike_num_hand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_hand:I

    return-void
.end method

.method public setLike_num_self(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_self:I

    return-void
.end method

.method public setLike_num_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_num_total:I

    return-void
.end method

.method public setLike_sgin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->like_sgin:I

    return-void
.end method

.method public setLtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->ltype:Ljava/lang/String;

    return-void
.end method

.method public setPlay_time_num_hand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_hand:I

    return-void
.end method

.method public setPlay_time_num_self(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_self:I

    return-void
.end method

.method public setPlay_time_num_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_num_total:I

    return-void
.end method

.method public setPlay_time_sgin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->play_time_sgin:I

    return-void
.end method

.method public setShare_content(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_content:Ljava/lang/String;

    return-void
.end method

.method public setShare_num_hand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_num_hand:I

    return-void
.end method

.method public setShare_num_self(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_num_self:I

    return-void
.end method

.method public setShare_sgin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->share_sgin:I

    return-void
.end method

.method public setShow_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->show_time:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->status:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUnlikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->unlikes:I

    return-void
.end method
