.class public final Lio/teak/sdk/c/d;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    const-string v0, "FacebookAccessTokenEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lio/teak/sdk/c/d;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
