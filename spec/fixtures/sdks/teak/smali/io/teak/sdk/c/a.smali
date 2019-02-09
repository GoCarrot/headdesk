.class public final Lio/teak/sdk/c/a;
.super Lio/teak/sdk/o;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    const-string v0, "AdvertisingInfoEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lio/teak/sdk/c/a;->b:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lio/teak/sdk/c/a;->c:Z

    .line 17
    return-void
.end method
