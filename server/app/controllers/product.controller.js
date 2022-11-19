const db = require("../models")
const Product = db.products

exports.create = (req, res) => {
    Product.create(req.body)
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Erreur lors de l'ajout du produit."
            })
        })
}

exports.findAll = (req, res) => {
    Product.findAll()
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Erreur lors de la récupération des produits."
            })
        })
}

exports.findOne = (req, res) => {
    const id = req.params.id
    Product.findByPk(id)
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Erreur lors de la récupération du produit."
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id
    Product.update(req.body, {
        where: { id: id}
    })
        .then(num => {
            if (num == 1){
                res.send({
                    message: "Produit mis à jour."
                })
            } else {
                res.send({
                    message: "Produit non trouvé."
                })
            }
        })
        .catch(err => {
            res.status(500).send({
            message:
            err.message || `La donnée avec le id ${id} est introuvable.`
        })
    })
}

exports.delete = (req, res) => {
    const id = req.params.id
    Product.destroy({
        where: { id : id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Produit supprimé."
                })
            } else {
                res.send({
                    message: "Ce produit ne peut être supprimé."
                })
            }
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || `La donnée avec le id ${id} est introuvable.`
            })
        })
}

