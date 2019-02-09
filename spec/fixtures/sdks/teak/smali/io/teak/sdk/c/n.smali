.class public final Lio/teak/sdk/c/n;
.super Lio/teak/sdk/o;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    const-string v0, "TrackEventEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lio/teak/sdk/c/n;->b:Ljava/util/Map;

    .line 15
    return-void
.end method
