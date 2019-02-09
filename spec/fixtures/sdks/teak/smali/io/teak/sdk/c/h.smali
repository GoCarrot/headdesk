.class public final Lio/teak/sdk/c/h;
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
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .line 14
    const-string v0, "PurchaseEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lio/teak/sdk/c/h;->b:Ljava/util/Map;

    .line 16
    return-void
.end method
