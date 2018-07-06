using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Impairement.Models.InstitutionModels;

namespace Impairement.Controllers.InstitutionController
{
    public class customersController : Controller
    {
        private InstitutionEntities db = new InstitutionEntities();

        // GET: customers
        public ActionResult Index()
        {
            var customers = db.customers.Include(c => c.region).Include(c => c.group);
            return View(customers.ToList());
        }

        // GET: customers/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            customer customer = db.customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // GET: customers/Create
        public ActionResult Create()
        {
            ViewBag.region_id = new SelectList(db.regions, "id_region", "region_description");
            ViewBag.group_id = new SelectList(db.groups, "id_group", "group_description");
            return View();
        }

        // POST: customers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "customer_number,account_holder_name,contact1,contact2,genda,group_id,region_id")] customer customer)
        {
            if (ModelState.IsValid)
            {
                db.customers.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.region_id = new SelectList(db.regions, "id_region", "region_description", customer.region_id);
            ViewBag.group_id = new SelectList(db.groups, "id_group", "group_description", customer.group_id);
            return View(customer);
        }

        // GET: customers/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            customer customer = db.customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            ViewBag.region_id = new SelectList(db.regions, "id_region", "region_description", customer.region_id);
            ViewBag.group_id = new SelectList(db.groups, "id_group", "group_description", customer.group_id);
            return View(customer);
        }

        // POST: customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "customer_number,account_holder_name,contact1,contact2,genda,group_id,region_id")] customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.region_id = new SelectList(db.regions, "id_region", "region_description", customer.region_id);
            ViewBag.group_id = new SelectList(db.groups, "id_group", "group_description", customer.group_id);
            return View(customer);
        }

        // GET: customers/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            customer customer = db.customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            customer customer = db.customers.Find(id);
            db.customers.Remove(customer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
