.class public Lcom/baidu/model/virus/AvpScanResult;
.super Ljava/lang/Object;
.source "AvpScanResult.java"


# instance fields
.field public apkpath:Ljava/lang/String;

.field public appname:Ljava/lang/String;

.field public category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public certsha1:Ljava/lang/String;

.field public deepscan:I

.field public deepscanfinished:I

.field public errorinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fromstatic:Z

.field public md5:Ljava/lang/String;

.field public packagename:Ljava/lang/String;

.field public score:I

.field public sizeinbytes:I

.field public source:Ljava/lang/String;

.field public summary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public systemapp:Z

.field public upload:I

.field public versionCode:I

.field public virusname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkpath()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->apkpath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->category:Ljava/util/List;

    return-object v0
.end method

.method public getCertsha1()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->certsha1:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepscan()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscan:I

    return v0
.end method

.method public getDeepscanfinished()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscanfinished:I

    return v0
.end method

.method public getErrorinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->errorinfo:Ljava/util/List;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->score:I

    return v0
.end method

.method public getSizeinbytes()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->sizeinbytes:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->summary:Ljava/util/List;

    return-object v0
.end method

.method public getUpload()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->upload:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/baidu/model/virus/AvpScanResult;->versionCode:I

    return v0
.end method

.method public getVirusname()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/baidu/model/virus/AvpScanResult;->virusname:Ljava/lang/String;

    return-object v0
.end method

.method public isFromstatic()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/baidu/model/virus/AvpScanResult;->fromstatic:Z

    return v0
.end method

.method public isSystemapp()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/baidu/model/virus/AvpScanResult;->systemapp:Z

    return v0
.end method

.method public setApkpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkpath"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->apkpath:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->appname:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->category:Ljava/util/List;

    .line 291
    return-void
.end method

.method public setCertsha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "certsha1"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->certsha1:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setDeepscan(I)V
    .locals 0
    .param p1, "deepscan"    # I

    .line 202
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscan:I

    .line 203
    return-void
.end method

.method public setDeepscanfinished(I)V
    .locals 0
    .param p1, "deepscanfinished"    # I

    .line 210
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscanfinished:I

    .line 211
    return-void
.end method

.method public setErrorinfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->errorinfo:Ljava/util/List;

    .line 171
    return-void
.end method

.method public setFromstatic(Z)V
    .locals 0
    .param p1, "fromstatic"    # Z

    .line 274
    iput-boolean p1, p0, Lcom/baidu/model/virus/AvpScanResult;->fromstatic:Z

    .line 275
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->md5:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->packagename:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .line 242
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->score:I

    .line 243
    return-void
.end method

.method public setSizeinbytes(I)V
    .locals 0
    .param p1, "sizeinbytes"    # I

    .line 234
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->sizeinbytes:I

    .line 235
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->source:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setSummary(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p1, "summary":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->summary:Ljava/util/List;

    .line 299
    return-void
.end method

.method public setSystemapp(Z)V
    .locals 0
    .param p1, "systemapp"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/baidu/model/virus/AvpScanResult;->systemapp:Z

    .line 283
    return-void
.end method

.method public setUpload(I)V
    .locals 0
    .param p1, "upload"    # I

    .line 250
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->upload:I

    .line 251
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .line 258
    iput p1, p0, Lcom/baidu/model/virus/AvpScanResult;->versionCode:I

    .line 259
    return-void
.end method

.method public setVirusname(Ljava/lang/String;)V
    .locals 0
    .param p1, "virusname"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/baidu/model/virus/AvpScanResult;->virusname:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvpScanResult{errorinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/virus/AvpScanResult;->errorinfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apkpath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/virus/AvpScanResult;->apkpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->appname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", certsha1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->certsha1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deepscan="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscan:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deepscanfinished="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->deepscanfinished:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packagename=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sizeinbytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->sizeinbytes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", score="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->score:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->upload:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/model/virus/AvpScanResult;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", virusname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/virus/AvpScanResult;->virusname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fromstatic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/virus/AvpScanResult;->fromstatic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", systemapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/virus/AvpScanResult;->systemapp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/virus/AvpScanResult;->category:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/virus/AvpScanResult;->summary:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
