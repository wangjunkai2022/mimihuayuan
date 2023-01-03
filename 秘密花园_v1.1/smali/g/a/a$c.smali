.class public final Lg/a/a$c;
.super Ljava/lang/Object;
.source "BaseRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Lg/a/a;

.field public b:Lg/a/f1/p;

.field public c:Lg/a/f1/c;

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lg/a/a$c;->a:Lg/a/a;

    .line 2
    iput-object v0, p0, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 3
    iput-object v0, p0, Lg/a/a$c;->c:Lg/a/f1/c;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lg/a/a$c;->d:Z

    .line 5
    iput-object v0, p0, Lg/a/a$c;->e:Ljava/util/List;

    return-void
.end method

.method public b(Lg/a/a;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lg/a/f1/p;",
            "Lg/a/f1/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/a/a$c;->a:Lg/a/a;

    .line 2
    iput-object p2, p0, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 3
    iput-object p3, p0, Lg/a/a$c;->c:Lg/a/f1/c;

    .line 4
    iput-boolean p4, p0, Lg/a/a$c;->d:Z

    .line 5
    iput-object p5, p0, Lg/a/a$c;->e:Ljava/util/List;

    return-void
.end method
