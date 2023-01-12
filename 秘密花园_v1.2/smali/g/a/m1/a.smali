.class public Lg/a/m1/a;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lg/a/m1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/m1/a$h;
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/BackpressureStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    sput-object v0, Lg/a/m1/a;->a:Lio/reactivex/BackpressureStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/m1/a$e;

    invoke-direct {v0, p0}, Lg/a/m1/a$e;-><init>(Lg/a/m1/a;)V

    .line 3
    new-instance v0, Lg/a/m1/a$f;

    invoke-direct {v0, p0}, Lg/a/m1/a$f;-><init>(Lg/a/m1/a;)V

    .line 4
    new-instance v0, Lg/a/m1/a$g;

    invoke-direct {v0, p0}, Lg/a/m1/a$g;-><init>(Lg/a/m1/a;)V

    return-void
.end method


# virtual methods
.method public a(Lg/a/i;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/i;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lg/a/a;->b:Lg/a/b0;

    .line 2
    new-instance v0, Lg/a/m1/a$d;

    invoke-direct {v0, p0, p1, p2}, Lg/a/m1/a$d;-><init>(Lg/a/m1/a;Lg/a/b0;Lio/realm/DynamicRealmObject;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg/a/x;Lg/a/e0;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/x;",
            "TE;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lg/a/a;->b:Lg/a/b0;

    .line 2
    new-instance v0, Lg/a/m1/a$b;

    invoke-direct {v0, p0, p1, p2}, Lg/a/m1/a$b;-><init>(Lg/a/m1/a;Lg/a/b0;Lg/a/e0;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/a/i;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/i;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lg/a/a;->b:Lg/a/b0;

    .line 2
    new-instance v0, Lg/a/m1/a$c;

    invoke-direct {v0, p0, p1, p2}, Lg/a/m1/a$c;-><init>(Lg/a/m1/a;Lg/a/b0;Lio/realm/DynamicRealmObject;)V

    sget-object p1, Lg/a/m1/a;->a:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public d(Lg/a/x;Lg/a/e0;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/x;",
            "TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lg/a/a;->b:Lg/a/b0;

    .line 2
    new-instance v0, Lg/a/m1/a$a;

    invoke-direct {v0, p0, p1, p2}, Lg/a/m1/a$a;-><init>(Lg/a/m1/a;Lg/a/b0;Lg/a/e0;)V

    sget-object p1, Lg/a/m1/a;->a:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lg/a/m1/a;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
